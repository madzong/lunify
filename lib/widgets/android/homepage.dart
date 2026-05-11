import 'package:flutter/material.dart';
import 'package:lunify/widgets/android/bottom_nav.dart';
import 'package:lunify/widgets/android/homepage/most_listened.dart';
import 'package:lunify/widgets/android/homepage/recents.dart';
import 'package:lunify/widgets/android/mini_player.dart';

import 'drawer.dart';
import 'bar.dart';
import 'homepage/mini_playlist.dart';

class AndroidHomePage extends StatefulWidget {
  const AndroidHomePage({super.key});

  @override
  State<StatefulWidget> createState() => _AndroidHomePageState();
}

class _AndroidHomePageState extends State<AndroidHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AndroidAppBar(),
      drawer: AndroidNavDrawer(),

      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: .vertical,
            child: Column(
              children: [
                MiniPlaylistView(),

                Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),

                Recents(),

                Divider(
                  indent: 8.0,
                  endIndent: 8.0,
                ),

                MostListened(),
              ],
            ),
          ),
          Align(
            alignment: .bottomCenter,
            child: AndroidMiniPlayer(
              margin: .all(8.0),
              title: 'Fistaszki',
              songLength: Duration(minutes: 2, seconds: 51),
            ),
          )
        ],
      ),
      bottomNavigationBar: AndroidBottomNav(),
    );
  }
}