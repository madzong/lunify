import 'package:flutter/material.dart';

import 'big_song.dart';

class Recents extends StatelessWidget {
  const Recents({
    super.key,
    this.margin = const EdgeInsets.symmetric(
      vertical: 18.0,
      horizontal: 24.0,
    ),
  });

  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text(
              'Recent',
              style: TextStyle(
                fontWeight: .bold,
                fontSize: 24,
              ),
              textAlign: .start,
            ),

            SizedBox(height: 8.0),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 8.0,
                children: [
                  BigSong(
                    imageAssetName: 'assets/icon/profile_placeholder.png',
                    title: 'Fistaszki',
                    duration: Duration(minutes: 2, seconds: 51),
                    author: 'Spermvas',
                    onPressed: () {},
                  ),
                  BigSong(
                    imageAssetName: 'assets/icon/profile_placeholder.png',
                    title: 'Gejowskie Zombie',
                    duration: Duration(minutes: 3, seconds: 14),
                    author: 'Spermvas',
                    onPressed: () {},
                  ),
                  BigSong(
                    imageAssetName: 'assets/icon/profile_placeholder.png',
                    title: 'Opowieści z doliny spermy',
                    duration: Duration(minutes: 62, seconds: 51),
                    author: 'Spermvas',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}