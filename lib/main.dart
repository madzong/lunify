import 'package:ffmpeg_kit_extended_flutter/ffmpeg_kit_extended_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lunify/database.dart';
import 'package:lunify/download_manager.dart';
import 'package:lunify/song_manager.dart';
import 'package:lunify/widgets/add_songs.dart';
import 'package:lunify/widgets/homepage.dart';
import 'package:provider/provider.dart';

void main() async {
  await FFmpegKitExtended.initialize();

  runApp(
    MultiProvider(
      providers: [
        Provider<AppDatabase>(create: (_) => AppDatabase()),
        Provider<DownloadManager>(create: (_) => DownloadManager()),
        Provider<SongManager>(create: (context) => SongManager(context)),
      ],
    ),
  );
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/add',
        builder: (context, state) => const AddSongs(),
      )
    ]
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: Colors.deepPurple,
      ),
      routerConfig: _router,
    );
  }
}
