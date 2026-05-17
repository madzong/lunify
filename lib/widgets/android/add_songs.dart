// ignore_for_file: dead_code

import 'dart:developer';

import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:lunify/database.dart';
import 'package:lunify/download_manager.dart';
import 'package:lunify/widgets/android/bar.dart';
import 'package:lunify/widgets/android/bottom_nav.dart';
import 'package:lunify/widgets/android/drawer.dart';
import 'package:provider/provider.dart';

class AndroidAddSongsPage extends StatefulWidget {
  const AndroidAddSongsPage({super.key});

  @override
  State<AndroidAddSongsPage> createState() => _AndroidAddSongsPageState();
}

class _AndroidAddSongsPageState extends State<AndroidAddSongsPage> {
  String _inputURL = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AndroidAppBar(topText: 'Add Songs'),
      drawer: AndroidNavDrawer(),

      body: SingleChildScrollView(
        scrollDirection: .vertical,
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'YouTube URL',
              ),
              onChanged: (value) => _inputURL = value,
            ),

            TextButton(
              onPressed: () async {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: const Text('YouTube downloading currently unavailable.')),
                );

                // TODO: Fix YouTube downloading (HARD)
                return;

                final db = Provider.of<AppDatabase>(context, listen: false);

                try {
                  final uri = Uri.parse(_inputURL);

                  if (uri.path != '/watch') {
                    throw FormatException('Not a video!');
                  }

                  log(uri.host);
                  if (!uri.host.endsWith('youtube.com')) {
                    throw FormatException('Not a YouTube URL!');
                  }

                  if (uri.queryParameters.containsKey('list')) {
                    log('Playlist');
                  } else if (uri.queryParameters.containsKey('v')) {
                    final id = uri.queryParameters['v'];

                    final dlManager = Provider.of<DownloadManager>(context, listen: false);
                    dlManager.addDownload(id!, db);
                  } else {
                    throw FormatException('Unknown YouTube URL');
                  }
                } on FormatException catch(e) {
                  log('Failed to parse URL', error: e, level: 2000);
                }
              },
              child: Text('Add'),
            ),

            TextButton(
              onPressed: () {
                final db = Provider.of<AppDatabase>(context);

                
              },
              child: const Text('Import from file'),
            ),
          ],
        ),
      ),

      bottomNavigationBar: AndroidBottomNav(),
    );
  }
}