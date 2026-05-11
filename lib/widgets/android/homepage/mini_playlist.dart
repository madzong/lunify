import 'package:flutter/material.dart';

import 'playlist_button.dart';

class MiniPlaylistView extends StatelessWidget {
  const MiniPlaylistView({
    super.key,
    this.margin = const EdgeInsets.only(
      left: 24.0,
      right: 24.0,
      bottom: 12.0,
      top: 0.0,
    ),
  });

  final double _playlistButtonHeight = 48.0;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        children: [
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisExtent: _playlistButtonHeight,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            physics: NeverScrollableScrollPhysics(),

            children: [
              PlaylistButton(
                text: 'Playlist 1',
                iconAssetName: 'assets/icon/profile_placeholder.png',
                onPressed: () {},
              ),
              PlaylistButton(
                text: 'Playlist 2',
                iconAssetName: 'assets/icon/profile_placeholder.png',
                onPressed: () {},
              ),
              PlaylistButton(
                text: 'Playlist 3',
                iconAssetName: 'assets/icon/profile_placeholder.png',
                onPressed: () {},
              ),
              PlaylistButton(
                text: 'Playlist 4',
                iconAssetName: 'assets/icon/profile_placeholder.png',
                onPressed: () {},
              ),
              PlaylistButton(
                text: 'Playlist 5',
                iconAssetName: 'assets/icon/profile_placeholder.png',
                onPressed: () {},
              ),
              PlaylistButton(
                text: 'Playlist 6',
                iconAssetName: 'assets/icon/profile_placeholder.png',
                onPressed: () {},
              ),
            ],
          ),

          SizedBox(
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.only(
                top: 12.0,
                bottom: 8.0,
              ),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Create new playlist'),
              ),
            )
          ),
        ],
      ),
    );
  }
}