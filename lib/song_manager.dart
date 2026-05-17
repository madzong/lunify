import 'dart:io';

import 'package:drift/drift.dart';
import 'package:ffmpeg_kit_extended_flutter/ffmpeg_kit_extended_flutter.dart';
import 'package:flutter/material.dart';
import 'package:lunify/database.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:provider/provider.dart';

class PickerException implements Exception {
  final String? message;

  const PickerException({this.message});

  @override
  String toString() {
    return 'PickerException: $message';
  }
}

class SongManager {
  SongManager(this.context);

  final BuildContext context;

  Future<void> addNewSong({
    required String title,
    required File songFile,
    required String author,
    File? thumbnailFile,
  }) async {
    final db = Provider.of<AppDatabase>(context);

    final dataDir = await getApplicationSupportDirectory();
    final songDir = Directory(p.join(dataDir.path, 'songs'));
    await songDir.create();
    final thumbDir = Directory(p.join(dataDir.path, 'thumbnails'));
    await thumbDir.create();

    final songFileName = p.basename(songFile.path);
    await songFile.copy(p.join(songDir.path, songFileName));

    int thumbFileID;

    if (thumbnailFile != null) {
      final thumbFileName = p.basename(thumbnailFile.path);
      await thumbnailFile.copy(p.join(thumbDir.path, thumbFileName));

      thumbFileID = await db.into(db.thumbnails).insert(
        ThumbnailsCompanion(
          filename: Value(thumbFileName),
        ),
      );
    }

    final songFileID = await db.into(db.songFiles).insert(
      SongFilesCompanion(
        filename: Value(songFileName),
      ),
    );

    final probe = await FFprobeKit.getMediaInformationAsync(songFile.path);
    final info = probe.getMediaInformation()!;
    final duration = int.parse(info.duration!);

    await db.into(db.songs).insert(
      SongsCompanion(
        title: Value(title),
        songFilesId: Value(songFileID),

      ),
    );
  }
}