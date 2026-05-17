import 'package:flutter/material.dart';

class AndroidAppBar extends StatelessWidget implements PreferredSizeWidget {
  AndroidAppBar({super.key, this.topText = 'Lunify'});

  final String topText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu)
          );
        }
      ),
      title: Text(topText),
      actions: [
        IconButton(
          icon: CircleAvatar(
            backgroundImage: AssetImage('assets/icon/profile_placeholder.png'),
          ),
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
          ),
          onPressed: () {},
        )
      ],
      centerTitle: true,
    );
  }

  @override
  final Size preferredSize = Size.fromHeight(kToolbarHeight);
}