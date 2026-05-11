import 'package:flutter/material.dart';

class AndroidNavDrawer extends StatelessWidget {
  const AndroidNavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.person_outline),
              title: const Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings_outlined),
              title: const Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.devices_outlined),
              title: const Text('Devices'),
            ),
            ListTile(
              leading: Icon(Icons.download_outlined),
              title: const Text('Downloaded'),
            ),
            ListTile(
              leading: Icon(Icons.bar_chart_outlined),
              title: const Text('Statistics'),
            ),
          ],
        ),
      ),
    );
  }
}
