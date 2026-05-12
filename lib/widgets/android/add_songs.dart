import 'package:flutter/material.dart';
import 'package:lunify/widgets/android/bar.dart';
import 'package:lunify/widgets/android/bottom_nav.dart';
import 'package:lunify/widgets/android/drawer.dart';

class AndroidAddSongsPage extends StatelessWidget {
  const AndroidAddSongsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AndroidAppBar(),
      drawer: AndroidNavDrawer(),

      body: SingleChildScrollView(
        scrollDirection: .vertical,
        child: Column(
          children: [
            Text(
              "Add Songs",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: AndroidBottomNav(),
    );
  }
}