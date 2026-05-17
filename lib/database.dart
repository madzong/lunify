import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Songs extends Table {
  TextColumn get id => text()();
  TextColumn get title => text().withLength(min: 1)();
  IntColumn get songFilesId => integer().references(SongFiles, #id)();
  IntColumn get length => integer()();
  TextColumn get author => text().withLength(min: 1).nullable()();
  IntColumn get thumbnail => integer().references(Thumbnails, #id).nullable()();
  DateTimeColumn get addedTime => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get lastListened => dateTime().nullable()();

  @override
  Set<Column<Object>>? get primaryKey => { id };
}

class SongFiles extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get filename => text()();
}

class Thumbnails extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get filename => text()();
}

enum SettingKeys {
  youtubeCookies(name: 'ytcookie');

  const SettingKeys({required this.name});

  final String name;
}

class Settings extends Table {
  TextColumn get settingKey => text()();
  TextColumn get settingValue => text()();

  @override
  Set<Column<Object>>? get primaryKey => { settingKey };
}

@DriftDatabase(tables: [Songs, SongFiles, Thumbnails, Settings])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  Future<String?> getSettingByKey(String key) async {
    try {
      return (await (select(settings)..where((r) => r.settingKey.equals(key))).get()).first.settingValue;
    } on StateError catch (_) {
      return null;
    }
  }

  Future<void> setSettingByKey(String key, String value) async {
    await (into(settings).insert(SettingsCompanion(
      settingKey: Value(key),
      settingValue: Value(value),
    )));
  }

  @override
  int get schemaVersion => 2;

  static QueryExecutor _openConnection() {
    if (kDebugMode) {
      getApplicationSupportDirectory().then(
        (dir) {
          final dbFile = File('${dir.path}/lunify_db.sqlite');
          dbFile.deleteSync();
        }
      );
    }

    return driftDatabase(
      name: 'lunify_db',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      beforeOpen: (details) async {
        if (kDebugMode) {
          final m = createMigrator();
          for (final table in allTables) {
            await m.deleteTable(table.actualTableName);
            await m.createTable(table);
          }
        }

        await customStatement('PRAGMA foreign_keys = ON');
      },
    );
  }
}