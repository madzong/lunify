import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lunify/widgets/android/add_songs.dart';
import 'package:lunify/widgets/pc/add_songs.dart';

class AddSongs extends StatelessWidget {
  const AddSongs({super.key});

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == .android) {
      return AndroidAddSongsPage();
    } else if (defaultTargetPlatform == .windows ||
               defaultTargetPlatform == .linux) {
      return PCAddSongsPage();
    } else {
      throw UnimplementedError("Target not supported");
    }
  }
}