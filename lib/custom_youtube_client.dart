import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

Future<String?> askForCookies() async {
  FilePickerResult? result = await FilePicker.pickFiles(
    type: FileType.custom,
    allowedExtensions: ['txt'],
  );

  var output = StringBuffer();

  if (result != null) {
    File file = File(result.files.single.path!);
    final lines = await file.readAsLines();

    for (final line in lines) {
      if (line.trim().startsWith('#') || line.trim().isEmpty) {
        continue;
      }

      final splitLine = line.trim().split('\t');

      if (splitLine.length != 7) {
        log('Invalid file', level: 2000);
        return null;
      }

      output.write(';${splitLine[5]}=${splitLine[6]}');
    }
  } else {
    return null;
  }

  return output.toString();
}

class CustomYoutubeClient extends YoutubeHttpClient {
  CustomYoutubeClient(this.cookies);

  final String cookies;

  @override
  Map<String, String> get headers {
    var bHeaders = {...YoutubeHttpClient.defaultHeaders};

    bHeaders['cookie'] = '${bHeaders['cookie']}$cookies';

    return bHeaders;
  }
}