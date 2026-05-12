import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AndroidBottomNav extends StatelessWidget {
  const AndroidBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: .spaceEvenly,
        children: [
          Expanded(
            child: IconButton(
              onPressed: () {
                context.go('/');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder()
              ),
              icon: Icon(Icons.home, size: 40.0),
            )
          ),
          Expanded(
            child: IconButton(
              onPressed: () {
                context.go('/add');
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder()
              ),
              icon: Icon(Icons.add_box, size: 40.0),
            ),
          ),
          Expanded(
            child: IconButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder()
              ),
              icon: Icon(Icons.music_note, size: 40.0),
            ),
          ),
        ],
      ),
    );
  }
}