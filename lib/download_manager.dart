import 'dart:developer';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:lunify/custom_youtube_client.dart';
import 'package:lunify/database.dart';
import 'package:path_provider/path_provider.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

enum DownloadStatus {
  starting,
  downloading,
  finished,
}

class Download {
  DownloadStatus downloadStatus = DownloadStatus.starting;
  final File _file;
  final Stream<List<int>> _stream;
  double _progress = 0;
  final int _streamLen;
  final void Function(double)? onProgressChanged;

  Download(this._file, this._stream, this._streamLen, {this.onProgressChanged});

  Future<void> startDownload() async {
    final output = _file.openWrite(mode: FileMode.writeOnlyAppend);
    var count = 0;

    log('Downloading...');

    downloadStatus = DownloadStatus.downloading;

    await for (final data in _stream) {
      log('Downloading chunk');

      count += data.length;
      _progress = (count / _streamLen) * 100;

      if (onProgressChanged != null) {
        log('Calling onProgressChanged');
        onProgressChanged!(_progress);
      }

      output.add(data);
    }

    log('??');

    await output.flush();
    await output.close();

    log('Download completed');

    downloadStatus = DownloadStatus.finished;
  }
}

class DownloadManager {
  Future<void> addDownload(String vidID, AppDatabase db) async {
    var cookies = await db.getSettingByKey(SettingKeys.youtubeCookies.name);

    if (cookies == null) {
      cookies = await askForCookies();

      if (cookies != null) {
        db.setSettingByKey(SettingKeys.youtubeCookies.name, cookies);
      } else {
        log('Unable to get cookies', level: 2000);
        return;
      }
    }

    log(cookies);

    final yt = YoutubeExplode(
      httpClient: CustomYoutubeClient(cookies),
    );

    final video = await yt.videos.get(vidID);
    final manifest = await yt.videos.streams.getManifest(vidID);
    final streamInfo = manifest.audioOnly.withHighestBitrate();
    final stream = yt.videos.streamsClient.get(streamInfo);

    final filename = '$vidID.${streamInfo.container.name}';
    
    final appSupportDir = await getApplicationSupportDirectory();
    final songDir = Directory('${appSupportDir.path}/songs');
    await songDir.create();

    final file = File('${songDir.path}/$filename');

    if (await file.exists()) {
      await file.delete();
    }

    final dl = Download(
      file,
      stream,
      streamInfo.size.totalBytes,
      onProgressChanged: (p0) => log('Download progress: $p0%'),
    );

    await dl.startDownload();

    final songFileID = await db.songFiles.insert().insert(
      SongFilesCompanion(
        filename: Value(filename),
      ),
    );

    await db.songs.insert().insert(
      SongsCompanion(
        title: Value(video.title),
        songFilesId: Value(songFileID),
        length: Value(video.duration!.inSeconds),
        author: Value(video.author),
      ),
    );
  }
}