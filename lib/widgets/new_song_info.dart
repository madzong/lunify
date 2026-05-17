import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lunify/widgets/android/new_song_info.dart';
import 'package:lunify/widgets/pc/new_song_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == .android) {
      return NewSongInfoAndroid();
    } else if (defaultTargetPlatform == .windows ||
               defaultTargetPlatform == .linux) {
      return NewSongInfoPC();
    } else {
      throw UnimplementedError("Target not supported");
    }
  }
}