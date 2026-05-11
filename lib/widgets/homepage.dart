import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'android/homepage.dart';
import 'pc/homepage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == .android) {
      return AndroidHomePage();
    } else if (defaultTargetPlatform == .windows ||
               defaultTargetPlatform == .linux) {
      return PCHomePage();
    } else {
      throw UnimplementedError("Target not supported");
    }
  }
}