import 'package:flutter/material.dart';

class AndroidMiniPlayer extends StatelessWidget {
  const AndroidMiniPlayer({
    super.key,
    this.margin = .zero,
    this.height = 72,
    required this.title,
    required this.songLength,
  });

  final EdgeInsetsGeometry margin;
  final double height;
  final String title;
  final Duration songLength;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      width: .infinity,
      height: height,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB((255 * 0.95).floor(), 0x2A, 0x06, 0x0D),
          shape: RoundedRectangleBorder(
            borderRadius: .circular(8.0),
          ),
          padding: .zero,
          tapTargetSize: .shrinkWrap,
          splashFactory: NoSplash.splashFactory,
        ),
        child: Row(
          mainAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: .circular(8.0),
              child: Image.asset('assets/icon/profile_placeholder.png', height: height, width: height),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: .center,
                mainAxisAlignment: .center,
                children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: .bold,
                        fontSize: 18.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: .spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.skip_previous),
                          style: ElevatedButton.styleFrom(
                            padding: .zero,
                            tapTargetSize: .shrinkWrap,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.play_arrow),
                          style: ElevatedButton.styleFrom(
                            padding: .zero,
                            tapTargetSize: .shrinkWrap,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.skip_next),
                          style: ElevatedButton.styleFrom(
                            padding: .zero,
                            tapTargetSize: .shrinkWrap,
                          ),
                        ),
                      ]
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