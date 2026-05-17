import 'package:flutter/material.dart';
import 'package:lunify/widgets/android/bar.dart';
import 'package:lunify/widgets/android/bottom_nav.dart';
import 'package:lunify/widgets/android/drawer.dart';

class NewSongInfoAndroid extends StatefulWidget {
  const NewSongInfoAndroid({super.key});

  @override
  State<StatefulWidget> createState() => _NewSongInfoAndroidState();
}

class _NewSongInfoAndroidState extends State<NewSongInfoAndroid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AndroidAppBar(topText: 'New Song Info'),
      drawer: AndroidNavDrawer(),

      body: SingleChildScrollView(
        child: Column(
          children: [
          ],
        ),
      ),

      bottomNavigationBar: AndroidBottomNav(),
    );
  }
}