import 'package:flutter/material.dart';

class PlaylistButton extends StatelessWidget {
  const PlaylistButton({
    super.key,
    this.playlistButtonHeight = 48,
    this.borderRadius = 8,
    required this.text,
    required this.iconAssetName,
    required this.onPressed,
  });

  final double playlistButtonHeight;
  final double borderRadius;
  final String text;
  final String iconAssetName;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(
            Radius.circular(borderRadius),
          ),
        ),
        padding: EdgeInsets.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(borderRadius),
              bottomLeft: Radius.circular(borderRadius),
            ),
            child: Image.asset(iconAssetName, height: playlistButtonHeight, width: playlistButtonHeight),
          ),
          SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}