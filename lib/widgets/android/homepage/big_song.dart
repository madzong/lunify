import 'package:flutter/material.dart';
import 'package:lunify/time_format.dart';

class BigSong extends StatelessWidget {
  const BigSong({
    super.key,
    this.borderRadius = 8.0,
    required this.imageAssetName,
    required this.title,
    required this.duration,
    required this.author,
    required this.onPressed,
  });

  final double borderRadius;
  final String imageAssetName;
  final String title;
  final Duration duration;
  final String author;
  final void Function() onPressed;

  final double imageSize = 128.0;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius)
        ),
        tapTargetSize: .shrinkWrap,
        padding: .zero,
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: .only(
              topLeft: .circular(borderRadius),
              topRight: .circular(borderRadius),
            ),
            child: Image.asset(imageAssetName, width: imageSize, height: imageSize),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 4.0,
              bottom: 4.0,
            ),
            width: imageSize,
            child: Column(
              crossAxisAlignment: .start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: .ellipsis,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: .bold,
                    color: Colors.white,
                    height: 2.5,
                  ),
                ),
                Text(
                  formatDuration(duration),
                  style: TextStyle(
                    fontSize: 10.0,
                    color: Colors.white,
                  ),
                ),
                Opacity(
                  opacity: 0.3,
                  child: Text(
                    author,
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}