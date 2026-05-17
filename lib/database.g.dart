// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $SongFilesTable extends SongFiles
    with TableInfo<$SongFilesTable, SongFile> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SongFilesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _filenameMeta = const VerificationMeta(
    'filename',
  );
  @override
  late final GeneratedColumn<String> filename = GeneratedColumn<String>(
    'filename',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, filename];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'song_files';
  @override
  VerificationContext validateIntegrity(
    Insertable<SongFile> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('filename')) {
      context.handle(
        _filenameMeta,
        filename.isAcceptableOrUnknown(data['filename']!, _filenameMeta),
      );
    } else if (isInserting) {
      context.missing(_filenameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SongFile map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SongFile(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      filename: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}filename'],
      )!,
    );
  }

  @override
  $SongFilesTable createAlias(String alias) {
    return $SongFilesTable(attachedDatabase, alias);
  }
}

class SongFile extends DataClass implements Insertable<SongFile> {
  final int id;
  final String filename;
  const SongFile({required this.id, required this.filename});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['filename'] = Variable<String>(filename);
    return map;
  }

  SongFilesCompanion toCompanion(bool nullToAbsent) {
    return SongFilesCompanion(id: Value(id), filename: Value(filename));
  }

  factory SongFile.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SongFile(
      id: serializer.fromJson<int>(json['id']),
      filename: serializer.fromJson<String>(json['filename']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'filename': serializer.toJson<String>(filename),
    };
  }

  SongFile copyWith({int? id, String? filename}) =>
      SongFile(id: id ?? this.id, filename: filename ?? this.filename);
  SongFile copyWithCompanion(SongFilesCompanion data) {
    return SongFile(
      id: data.id.present ? data.id.value : this.id,
      filename: data.filename.present ? data.filename.value : this.filename,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SongFile(')
          ..write('id: $id, ')
          ..write('filename: $filename')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, filename);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SongFile &&
          other.id == this.id &&
          other.filename == this.filename);
}

class SongFilesCompanion extends UpdateCompanion<SongFile> {
  final Value<int> id;
  final Value<String> filename;
  const SongFilesCompanion({
    this.id = const Value.absent(),
    this.filename = const Value.absent(),
  });
  SongFilesCompanion.insert({
    this.id = const Value.absent(),
    required String filename,
  }) : filename = Value(filename);
  static Insertable<SongFile> custom({
    Expression<int>? id,
    Expression<String>? filename,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (filename != null) 'filename': filename,
    });
  }

  SongFilesCompanion copyWith({Value<int>? id, Value<String>? filename}) {
    return SongFilesCompanion(
      id: id ?? this.id,
      filename: filename ?? this.filename,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (filename.present) {
      map['filename'] = Variable<String>(filename.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SongFilesCompanion(')
          ..write('id: $id, ')
          ..write('filename: $filename')
          ..write(')'))
        .toString();
  }
}

class $ThumbnailsTable extends Thumbnails
    with TableInfo<$ThumbnailsTable, Thumbnail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ThumbnailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _filenameMeta = const VerificationMeta(
    'filename',
  );
  @override
  late final GeneratedColumn<String> filename = GeneratedColumn<String>(
    'filename',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, filename];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'thumbnails';
  @override
  VerificationContext validateIntegrity(
    Insertable<Thumbnail> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('filename')) {
      context.handle(
        _filenameMeta,
        filename.isAcceptableOrUnknown(data['filename']!, _filenameMeta),
      );
    } else if (isInserting) {
      context.missing(_filenameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Thumbnail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Thumbnail(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      filename: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}filename'],
      )!,
    );
  }

  @override
  $ThumbnailsTable createAlias(String alias) {
    return $ThumbnailsTable(attachedDatabase, alias);
  }
}

class Thumbnail extends DataClass implements Insertable<Thumbnail> {
  final int id;
  final String filename;
  const Thumbnail({required this.id, required this.filename});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['filename'] = Variable<String>(filename);
    return map;
  }

  ThumbnailsCompanion toCompanion(bool nullToAbsent) {
    return ThumbnailsCompanion(id: Value(id), filename: Value(filename));
  }

  factory Thumbnail.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Thumbnail(
      id: serializer.fromJson<int>(json['id']),
      filename: serializer.fromJson<String>(json['filename']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'filename': serializer.toJson<String>(filename),
    };
  }

  Thumbnail copyWith({int? id, String? filename}) =>
      Thumbnail(id: id ?? this.id, filename: filename ?? this.filename);
  Thumbnail copyWithCompanion(ThumbnailsCompanion data) {
    return Thumbnail(
      id: data.id.present ? data.id.value : this.id,
      filename: data.filename.present ? data.filename.value : this.filename,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Thumbnail(')
          ..write('id: $id, ')
          ..write('filename: $filename')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, filename);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Thumbnail &&
          other.id == this.id &&
          other.filename == this.filename);
}

class ThumbnailsCompanion extends UpdateCompanion<Thumbnail> {
  final Value<int> id;
  final Value<String> filename;
  const ThumbnailsCompanion({
    this.id = const Value.absent(),
    this.filename = const Value.absent(),
  });
  ThumbnailsCompanion.insert({
    this.id = const Value.absent(),
    required String filename,
  }) : filename = Value(filename);
  static Insertable<Thumbnail> custom({
    Expression<int>? id,
    Expression<String>? filename,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (filename != null) 'filename': filename,
    });
  }

  ThumbnailsCompanion copyWith({Value<int>? id, Value<String>? filename}) {
    return ThumbnailsCompanion(
      id: id ?? this.id,
      filename: filename ?? this.filename,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (filename.present) {
      map['filename'] = Variable<String>(filename.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ThumbnailsCompanion(')
          ..write('id: $id, ')
          ..write('filename: $filename')
          ..write(')'))
        .toString();
  }
}

class $SongsTable extends Songs with TableInfo<$SongsTable, Song> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SongsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(minTextLength: 1),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _songFilesIdMeta = const VerificationMeta(
    'songFilesId',
  );
  @override
  late final GeneratedColumn<int> songFilesId = GeneratedColumn<int>(
    'song_files_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES song_files (id)',
    ),
  );
  static const VerificationMeta _lengthMeta = const VerificationMeta('length');
  @override
  late final GeneratedColumn<int> length = GeneratedColumn<int>(
    'length',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
    'author',
    aliasedName,
    true,
    additionalChecks: GeneratedColumn.checkTextLength(minTextLength: 1),
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _thumbnailMeta = const VerificationMeta(
    'thumbnail',
  );
  @override
  late final GeneratedColumn<int> thumbnail = GeneratedColumn<int>(
    'thumbnail',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES thumbnails (id)',
    ),
  );
  static const VerificationMeta _addedTimeMeta = const VerificationMeta(
    'addedTime',
  );
  @override
  late final GeneratedColumn<DateTime> addedTime = GeneratedColumn<DateTime>(
    'added_time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _lastListenedMeta = const VerificationMeta(
    'lastListened',
  );
  @override
  late final GeneratedColumn<DateTime> lastListened = GeneratedColumn<DateTime>(
    'last_listened',
    aliasedName,
    true,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    songFilesId,
    length,
    author,
    thumbnail,
    addedTime,
    lastListened,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'songs';
  @override
  VerificationContext validateIntegrity(
    Insertable<Song> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('song_files_id')) {
      context.handle(
        _songFilesIdMeta,
        songFilesId.isAcceptableOrUnknown(
          data['song_files_id']!,
          _songFilesIdMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_songFilesIdMeta);
    }
    if (data.containsKey('length')) {
      context.handle(
        _lengthMeta,
        length.isAcceptableOrUnknown(data['length']!, _lengthMeta),
      );
    } else if (isInserting) {
      context.missing(_lengthMeta);
    }
    if (data.containsKey('author')) {
      context.handle(
        _authorMeta,
        author.isAcceptableOrUnknown(data['author']!, _authorMeta),
      );
    }
    if (data.containsKey('thumbnail')) {
      context.handle(
        _thumbnailMeta,
        thumbnail.isAcceptableOrUnknown(data['thumbnail']!, _thumbnailMeta),
      );
    }
    if (data.containsKey('added_time')) {
      context.handle(
        _addedTimeMeta,
        addedTime.isAcceptableOrUnknown(data['added_time']!, _addedTimeMeta),
      );
    }
    if (data.containsKey('last_listened')) {
      context.handle(
        _lastListenedMeta,
        lastListened.isAcceptableOrUnknown(
          data['last_listened']!,
          _lastListenedMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Song map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Song(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      songFilesId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}song_files_id'],
      )!,
      length: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}length'],
      )!,
      author: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}author'],
      ),
      thumbnail: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}thumbnail'],
      ),
      addedTime: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}added_time'],
      )!,
      lastListened: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}last_listened'],
      ),
    );
  }

  @override
  $SongsTable createAlias(String alias) {
    return $SongsTable(attachedDatabase, alias);
  }
}

class Song extends DataClass implements Insertable<Song> {
  final String id;
  final String title;
  final int songFilesId;
  final int length;
  final String? author;
  final int? thumbnail;
  final DateTime addedTime;
  final DateTime? lastListened;
  const Song({
    required this.id,
    required this.title,
    required this.songFilesId,
    required this.length,
    this.author,
    this.thumbnail,
    required this.addedTime,
    this.lastListened,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['song_files_id'] = Variable<int>(songFilesId);
    map['length'] = Variable<int>(length);
    if (!nullToAbsent || author != null) {
      map['author'] = Variable<String>(author);
    }
    if (!nullToAbsent || thumbnail != null) {
      map['thumbnail'] = Variable<int>(thumbnail);
    }
    map['added_time'] = Variable<DateTime>(addedTime);
    if (!nullToAbsent || lastListened != null) {
      map['last_listened'] = Variable<DateTime>(lastListened);
    }
    return map;
  }

  SongsCompanion toCompanion(bool nullToAbsent) {
    return SongsCompanion(
      id: Value(id),
      title: Value(title),
      songFilesId: Value(songFilesId),
      length: Value(length),
      author: author == null && nullToAbsent
          ? const Value.absent()
          : Value(author),
      thumbnail: thumbnail == null && nullToAbsent
          ? const Value.absent()
          : Value(thumbnail),
      addedTime: Value(addedTime),
      lastListened: lastListened == null && nullToAbsent
          ? const Value.absent()
          : Value(lastListened),
    );
  }

  factory Song.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Song(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      songFilesId: serializer.fromJson<int>(json['songFilesId']),
      length: serializer.fromJson<int>(json['length']),
      author: serializer.fromJson<String?>(json['author']),
      thumbnail: serializer.fromJson<int?>(json['thumbnail']),
      addedTime: serializer.fromJson<DateTime>(json['addedTime']),
      lastListened: serializer.fromJson<DateTime?>(json['lastListened']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'songFilesId': serializer.toJson<int>(songFilesId),
      'length': serializer.toJson<int>(length),
      'author': serializer.toJson<String?>(author),
      'thumbnail': serializer.toJson<int?>(thumbnail),
      'addedTime': serializer.toJson<DateTime>(addedTime),
      'lastListened': serializer.toJson<DateTime?>(lastListened),
    };
  }

  Song copyWith({
    String? id,
    String? title,
    int? songFilesId,
    int? length,
    Value<String?> author = const Value.absent(),
    Value<int?> thumbnail = const Value.absent(),
    DateTime? addedTime,
    Value<DateTime?> lastListened = const Value.absent(),
  }) => Song(
    id: id ?? this.id,
    title: title ?? this.title,
    songFilesId: songFilesId ?? this.songFilesId,
    length: length ?? this.length,
    author: author.present ? author.value : this.author,
    thumbnail: thumbnail.present ? thumbnail.value : this.thumbnail,
    addedTime: addedTime ?? this.addedTime,
    lastListened: lastListened.present ? lastListened.value : this.lastListened,
  );
  Song copyWithCompanion(SongsCompanion data) {
    return Song(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      songFilesId: data.songFilesId.present
          ? data.songFilesId.value
          : this.songFilesId,
      length: data.length.present ? data.length.value : this.length,
      author: data.author.present ? data.author.value : this.author,
      thumbnail: data.thumbnail.present ? data.thumbnail.value : this.thumbnail,
      addedTime: data.addedTime.present ? data.addedTime.value : this.addedTime,
      lastListened: data.lastListened.present
          ? data.lastListened.value
          : this.lastListened,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Song(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('songFilesId: $songFilesId, ')
          ..write('length: $length, ')
          ..write('author: $author, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('addedTime: $addedTime, ')
          ..write('lastListened: $lastListened')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    songFilesId,
    length,
    author,
    thumbnail,
    addedTime,
    lastListened,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Song &&
          other.id == this.id &&
          other.title == this.title &&
          other.songFilesId == this.songFilesId &&
          other.length == this.length &&
          other.author == this.author &&
          other.thumbnail == this.thumbnail &&
          other.addedTime == this.addedTime &&
          other.lastListened == this.lastListened);
}

class SongsCompanion extends UpdateCompanion<Song> {
  final Value<String> id;
  final Value<String> title;
  final Value<int> songFilesId;
  final Value<int> length;
  final Value<String?> author;
  final Value<int?> thumbnail;
  final Value<DateTime> addedTime;
  final Value<DateTime?> lastListened;
  final Value<int> rowid;
  const SongsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.songFilesId = const Value.absent(),
    this.length = const Value.absent(),
    this.author = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.addedTime = const Value.absent(),
    this.lastListened = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SongsCompanion.insert({
    required String id,
    required String title,
    required int songFilesId,
    required int length,
    this.author = const Value.absent(),
    this.thumbnail = const Value.absent(),
    this.addedTime = const Value.absent(),
    this.lastListened = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       songFilesId = Value(songFilesId),
       length = Value(length);
  static Insertable<Song> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<int>? songFilesId,
    Expression<int>? length,
    Expression<String>? author,
    Expression<int>? thumbnail,
    Expression<DateTime>? addedTime,
    Expression<DateTime>? lastListened,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (songFilesId != null) 'song_files_id': songFilesId,
      if (length != null) 'length': length,
      if (author != null) 'author': author,
      if (thumbnail != null) 'thumbnail': thumbnail,
      if (addedTime != null) 'added_time': addedTime,
      if (lastListened != null) 'last_listened': lastListened,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SongsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<int>? songFilesId,
    Value<int>? length,
    Value<String?>? author,
    Value<int?>? thumbnail,
    Value<DateTime>? addedTime,
    Value<DateTime?>? lastListened,
    Value<int>? rowid,
  }) {
    return SongsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      songFilesId: songFilesId ?? this.songFilesId,
      length: length ?? this.length,
      author: author ?? this.author,
      thumbnail: thumbnail ?? this.thumbnail,
      addedTime: addedTime ?? this.addedTime,
      lastListened: lastListened ?? this.lastListened,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (songFilesId.present) {
      map['song_files_id'] = Variable<int>(songFilesId.value);
    }
    if (length.present) {
      map['length'] = Variable<int>(length.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (thumbnail.present) {
      map['thumbnail'] = Variable<int>(thumbnail.value);
    }
    if (addedTime.present) {
      map['added_time'] = Variable<DateTime>(addedTime.value);
    }
    if (lastListened.present) {
      map['last_listened'] = Variable<DateTime>(lastListened.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SongsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('songFilesId: $songFilesId, ')
          ..write('length: $length, ')
          ..write('author: $author, ')
          ..write('thumbnail: $thumbnail, ')
          ..write('addedTime: $addedTime, ')
          ..write('lastListened: $lastListened, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings with TableInfo<$SettingsTable, Setting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _settingKeyMeta = const VerificationMeta(
    'settingKey',
  );
  @override
  late final GeneratedColumn<String> settingKey = GeneratedColumn<String>(
    'setting_key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _settingValueMeta = const VerificationMeta(
    'settingValue',
  );
  @override
  late final GeneratedColumn<String> settingValue = GeneratedColumn<String>(
    'setting_value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [settingKey, settingValue];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<Setting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('setting_key')) {
      context.handle(
        _settingKeyMeta,
        settingKey.isAcceptableOrUnknown(data['setting_key']!, _settingKeyMeta),
      );
    } else if (isInserting) {
      context.missing(_settingKeyMeta);
    }
    if (data.containsKey('setting_value')) {
      context.handle(
        _settingValueMeta,
        settingValue.isAcceptableOrUnknown(
          data['setting_value']!,
          _settingValueMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_settingValueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {settingKey};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Setting(
      settingKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}setting_key'],
      )!,
      settingValue: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}setting_value'],
      )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class Setting extends DataClass implements Insertable<Setting> {
  final String settingKey;
  final String settingValue;
  const Setting({required this.settingKey, required this.settingValue});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['setting_key'] = Variable<String>(settingKey);
    map['setting_value'] = Variable<String>(settingValue);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      settingKey: Value(settingKey),
      settingValue: Value(settingValue),
    );
  }

  factory Setting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Setting(
      settingKey: serializer.fromJson<String>(json['settingKey']),
      settingValue: serializer.fromJson<String>(json['settingValue']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'settingKey': serializer.toJson<String>(settingKey),
      'settingValue': serializer.toJson<String>(settingValue),
    };
  }

  Setting copyWith({String? settingKey, String? settingValue}) => Setting(
    settingKey: settingKey ?? this.settingKey,
    settingValue: settingValue ?? this.settingValue,
  );
  Setting copyWithCompanion(SettingsCompanion data) {
    return Setting(
      settingKey: data.settingKey.present
          ? data.settingKey.value
          : this.settingKey,
      settingValue: data.settingValue.present
          ? data.settingValue.value
          : this.settingValue,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('settingKey: $settingKey, ')
          ..write('settingValue: $settingValue')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(settingKey, settingValue);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting &&
          other.settingKey == this.settingKey &&
          other.settingValue == this.settingValue);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<String> settingKey;
  final Value<String> settingValue;
  final Value<int> rowid;
  const SettingsCompanion({
    this.settingKey = const Value.absent(),
    this.settingValue = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsCompanion.insert({
    required String settingKey,
    required String settingValue,
    this.rowid = const Value.absent(),
  }) : settingKey = Value(settingKey),
       settingValue = Value(settingValue);
  static Insertable<Setting> custom({
    Expression<String>? settingKey,
    Expression<String>? settingValue,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (settingKey != null) 'setting_key': settingKey,
      if (settingValue != null) 'setting_value': settingValue,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsCompanion copyWith({
    Value<String>? settingKey,
    Value<String>? settingValue,
    Value<int>? rowid,
  }) {
    return SettingsCompanion(
      settingKey: settingKey ?? this.settingKey,
      settingValue: settingValue ?? this.settingValue,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (settingKey.present) {
      map['setting_key'] = Variable<String>(settingKey.value);
    }
    if (settingValue.present) {
      map['setting_value'] = Variable<String>(settingValue.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('settingKey: $settingKey, ')
          ..write('settingValue: $settingValue, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SongFilesTable songFiles = $SongFilesTable(this);
  late final $ThumbnailsTable thumbnails = $ThumbnailsTable(this);
  late final $SongsTable songs = $SongsTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    songFiles,
    thumbnails,
    songs,
    settings,
  ];
}

typedef $$SongFilesTableCreateCompanionBuilder =
    SongFilesCompanion Function({Value<int> id, required String filename});
typedef $$SongFilesTableUpdateCompanionBuilder =
    SongFilesCompanion Function({Value<int> id, Value<String> filename});

final class $$SongFilesTableReferences
    extends BaseReferences<_$AppDatabase, $SongFilesTable, SongFile> {
  $$SongFilesTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SongsTable, List<Song>> _songsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.songs,
    aliasName: $_aliasNameGenerator(db.songFiles.id, db.songs.songFilesId),
  );

  $$SongsTableProcessedTableManager get songsRefs {
    final manager = $$SongsTableTableManager(
      $_db,
      $_db.songs,
    ).filter((f) => f.songFilesId.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_songsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$SongFilesTableFilterComposer
    extends Composer<_$AppDatabase, $SongFilesTable> {
  $$SongFilesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filename => $composableBuilder(
    column: $table.filename,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> songsRefs(
    Expression<bool> Function($$SongsTableFilterComposer f) f,
  ) {
    final $$SongsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.songs,
      getReferencedColumn: (t) => t.songFilesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongsTableFilterComposer(
            $db: $db,
            $table: $db.songs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SongFilesTableOrderingComposer
    extends Composer<_$AppDatabase, $SongFilesTable> {
  $$SongFilesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filename => $composableBuilder(
    column: $table.filename,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SongFilesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SongFilesTable> {
  $$SongFilesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get filename =>
      $composableBuilder(column: $table.filename, builder: (column) => column);

  Expression<T> songsRefs<T extends Object>(
    Expression<T> Function($$SongsTableAnnotationComposer a) f,
  ) {
    final $$SongsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.songs,
      getReferencedColumn: (t) => t.songFilesId,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongsTableAnnotationComposer(
            $db: $db,
            $table: $db.songs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$SongFilesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SongFilesTable,
          SongFile,
          $$SongFilesTableFilterComposer,
          $$SongFilesTableOrderingComposer,
          $$SongFilesTableAnnotationComposer,
          $$SongFilesTableCreateCompanionBuilder,
          $$SongFilesTableUpdateCompanionBuilder,
          (SongFile, $$SongFilesTableReferences),
          SongFile,
          PrefetchHooks Function({bool songsRefs})
        > {
  $$SongFilesTableTableManager(_$AppDatabase db, $SongFilesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SongFilesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SongFilesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SongFilesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> filename = const Value.absent(),
              }) => SongFilesCompanion(id: id, filename: filename),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String filename,
              }) => SongFilesCompanion.insert(id: id, filename: filename),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$SongFilesTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({songsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (songsRefs) db.songs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (songsRefs)
                    await $_getPrefetchedData<SongFile, $SongFilesTable, Song>(
                      currentTable: table,
                      referencedTable: $$SongFilesTableReferences
                          ._songsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$SongFilesTableReferences(db, table, p0).songsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where(
                            (e) => e.songFilesId == item.id,
                          ),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$SongFilesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SongFilesTable,
      SongFile,
      $$SongFilesTableFilterComposer,
      $$SongFilesTableOrderingComposer,
      $$SongFilesTableAnnotationComposer,
      $$SongFilesTableCreateCompanionBuilder,
      $$SongFilesTableUpdateCompanionBuilder,
      (SongFile, $$SongFilesTableReferences),
      SongFile,
      PrefetchHooks Function({bool songsRefs})
    >;
typedef $$ThumbnailsTableCreateCompanionBuilder =
    ThumbnailsCompanion Function({Value<int> id, required String filename});
typedef $$ThumbnailsTableUpdateCompanionBuilder =
    ThumbnailsCompanion Function({Value<int> id, Value<String> filename});

final class $$ThumbnailsTableReferences
    extends BaseReferences<_$AppDatabase, $ThumbnailsTable, Thumbnail> {
  $$ThumbnailsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$SongsTable, List<Song>> _songsRefsTable(
    _$AppDatabase db,
  ) => MultiTypedResultKey.fromTable(
    db.songs,
    aliasName: $_aliasNameGenerator(db.thumbnails.id, db.songs.thumbnail),
  );

  $$SongsTableProcessedTableManager get songsRefs {
    final manager = $$SongsTableTableManager(
      $_db,
      $_db.songs,
    ).filter((f) => f.thumbnail.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_songsRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$ThumbnailsTableFilterComposer
    extends Composer<_$AppDatabase, $ThumbnailsTable> {
  $$ThumbnailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get filename => $composableBuilder(
    column: $table.filename,
    builder: (column) => ColumnFilters(column),
  );

  Expression<bool> songsRefs(
    Expression<bool> Function($$SongsTableFilterComposer f) f,
  ) {
    final $$SongsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.songs,
      getReferencedColumn: (t) => t.thumbnail,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongsTableFilterComposer(
            $db: $db,
            $table: $db.songs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ThumbnailsTableOrderingComposer
    extends Composer<_$AppDatabase, $ThumbnailsTable> {
  $$ThumbnailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get filename => $composableBuilder(
    column: $table.filename,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ThumbnailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ThumbnailsTable> {
  $$ThumbnailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get filename =>
      $composableBuilder(column: $table.filename, builder: (column) => column);

  Expression<T> songsRefs<T extends Object>(
    Expression<T> Function($$SongsTableAnnotationComposer a) f,
  ) {
    final $$SongsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.songs,
      getReferencedColumn: (t) => t.thumbnail,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongsTableAnnotationComposer(
            $db: $db,
            $table: $db.songs,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$ThumbnailsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ThumbnailsTable,
          Thumbnail,
          $$ThumbnailsTableFilterComposer,
          $$ThumbnailsTableOrderingComposer,
          $$ThumbnailsTableAnnotationComposer,
          $$ThumbnailsTableCreateCompanionBuilder,
          $$ThumbnailsTableUpdateCompanionBuilder,
          (Thumbnail, $$ThumbnailsTableReferences),
          Thumbnail,
          PrefetchHooks Function({bool songsRefs})
        > {
  $$ThumbnailsTableTableManager(_$AppDatabase db, $ThumbnailsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ThumbnailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ThumbnailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ThumbnailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> filename = const Value.absent(),
              }) => ThumbnailsCompanion(id: id, filename: filename),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String filename,
              }) => ThumbnailsCompanion.insert(id: id, filename: filename),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$ThumbnailsTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({songsRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (songsRefs) db.songs],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (songsRefs)
                    await $_getPrefetchedData<
                      Thumbnail,
                      $ThumbnailsTable,
                      Song
                    >(
                      currentTable: table,
                      referencedTable: $$ThumbnailsTableReferences
                          ._songsRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$ThumbnailsTableReferences(db, table, p0).songsRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.thumbnail == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$ThumbnailsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ThumbnailsTable,
      Thumbnail,
      $$ThumbnailsTableFilterComposer,
      $$ThumbnailsTableOrderingComposer,
      $$ThumbnailsTableAnnotationComposer,
      $$ThumbnailsTableCreateCompanionBuilder,
      $$ThumbnailsTableUpdateCompanionBuilder,
      (Thumbnail, $$ThumbnailsTableReferences),
      Thumbnail,
      PrefetchHooks Function({bool songsRefs})
    >;
typedef $$SongsTableCreateCompanionBuilder =
    SongsCompanion Function({
      required String id,
      required String title,
      required int songFilesId,
      required int length,
      Value<String?> author,
      Value<int?> thumbnail,
      Value<DateTime> addedTime,
      Value<DateTime?> lastListened,
      Value<int> rowid,
    });
typedef $$SongsTableUpdateCompanionBuilder =
    SongsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<int> songFilesId,
      Value<int> length,
      Value<String?> author,
      Value<int?> thumbnail,
      Value<DateTime> addedTime,
      Value<DateTime?> lastListened,
      Value<int> rowid,
    });

final class $$SongsTableReferences
    extends BaseReferences<_$AppDatabase, $SongsTable, Song> {
  $$SongsTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $SongFilesTable _songFilesIdTable(_$AppDatabase db) => db.songFiles
      .createAlias($_aliasNameGenerator(db.songs.songFilesId, db.songFiles.id));

  $$SongFilesTableProcessedTableManager get songFilesId {
    final $_column = $_itemColumn<int>('song_files_id')!;

    final manager = $$SongFilesTableTableManager(
      $_db,
      $_db.songFiles,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_songFilesIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static $ThumbnailsTable _thumbnailTable(_$AppDatabase db) => db.thumbnails
      .createAlias($_aliasNameGenerator(db.songs.thumbnail, db.thumbnails.id));

  $$ThumbnailsTableProcessedTableManager? get thumbnail {
    final $_column = $_itemColumn<int>('thumbnail');
    if ($_column == null) return null;
    final manager = $$ThumbnailsTableTableManager(
      $_db,
      $_db.thumbnails,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_thumbnailTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$SongsTableFilterComposer extends Composer<_$AppDatabase, $SongsTable> {
  $$SongsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get length => $composableBuilder(
    column: $table.length,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get author => $composableBuilder(
    column: $table.author,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get addedTime => $composableBuilder(
    column: $table.addedTime,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get lastListened => $composableBuilder(
    column: $table.lastListened,
    builder: (column) => ColumnFilters(column),
  );

  $$SongFilesTableFilterComposer get songFilesId {
    final $$SongFilesTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.songFilesId,
      referencedTable: $db.songFiles,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongFilesTableFilterComposer(
            $db: $db,
            $table: $db.songFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ThumbnailsTableFilterComposer get thumbnail {
    final $$ThumbnailsTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.thumbnail,
      referencedTable: $db.thumbnails,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ThumbnailsTableFilterComposer(
            $db: $db,
            $table: $db.thumbnails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SongsTableOrderingComposer
    extends Composer<_$AppDatabase, $SongsTable> {
  $$SongsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get length => $composableBuilder(
    column: $table.length,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get author => $composableBuilder(
    column: $table.author,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get addedTime => $composableBuilder(
    column: $table.addedTime,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get lastListened => $composableBuilder(
    column: $table.lastListened,
    builder: (column) => ColumnOrderings(column),
  );

  $$SongFilesTableOrderingComposer get songFilesId {
    final $$SongFilesTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.songFilesId,
      referencedTable: $db.songFiles,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongFilesTableOrderingComposer(
            $db: $db,
            $table: $db.songFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ThumbnailsTableOrderingComposer get thumbnail {
    final $$ThumbnailsTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.thumbnail,
      referencedTable: $db.thumbnails,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ThumbnailsTableOrderingComposer(
            $db: $db,
            $table: $db.thumbnails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SongsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SongsTable> {
  $$SongsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get length =>
      $composableBuilder(column: $table.length, builder: (column) => column);

  GeneratedColumn<String> get author =>
      $composableBuilder(column: $table.author, builder: (column) => column);

  GeneratedColumn<DateTime> get addedTime =>
      $composableBuilder(column: $table.addedTime, builder: (column) => column);

  GeneratedColumn<DateTime> get lastListened => $composableBuilder(
    column: $table.lastListened,
    builder: (column) => column,
  );

  $$SongFilesTableAnnotationComposer get songFilesId {
    final $$SongFilesTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.songFilesId,
      referencedTable: $db.songFiles,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$SongFilesTableAnnotationComposer(
            $db: $db,
            $table: $db.songFiles,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  $$ThumbnailsTableAnnotationComposer get thumbnail {
    final $$ThumbnailsTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.thumbnail,
      referencedTable: $db.thumbnails,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$ThumbnailsTableAnnotationComposer(
            $db: $db,
            $table: $db.thumbnails,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$SongsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SongsTable,
          Song,
          $$SongsTableFilterComposer,
          $$SongsTableOrderingComposer,
          $$SongsTableAnnotationComposer,
          $$SongsTableCreateCompanionBuilder,
          $$SongsTableUpdateCompanionBuilder,
          (Song, $$SongsTableReferences),
          Song,
          PrefetchHooks Function({bool songFilesId, bool thumbnail})
        > {
  $$SongsTableTableManager(_$AppDatabase db, $SongsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SongsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SongsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SongsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> songFilesId = const Value.absent(),
                Value<int> length = const Value.absent(),
                Value<String?> author = const Value.absent(),
                Value<int?> thumbnail = const Value.absent(),
                Value<DateTime> addedTime = const Value.absent(),
                Value<DateTime?> lastListened = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SongsCompanion(
                id: id,
                title: title,
                songFilesId: songFilesId,
                length: length,
                author: author,
                thumbnail: thumbnail,
                addedTime: addedTime,
                lastListened: lastListened,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required int songFilesId,
                required int length,
                Value<String?> author = const Value.absent(),
                Value<int?> thumbnail = const Value.absent(),
                Value<DateTime> addedTime = const Value.absent(),
                Value<DateTime?> lastListened = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SongsCompanion.insert(
                id: id,
                title: title,
                songFilesId: songFilesId,
                length: length,
                author: author,
                thumbnail: thumbnail,
                addedTime: addedTime,
                lastListened: lastListened,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) =>
                    (e.readTable(table), $$SongsTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({songFilesId = false, thumbnail = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (songFilesId) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.songFilesId,
                                referencedTable: $$SongsTableReferences
                                    ._songFilesIdTable(db),
                                referencedColumn: $$SongsTableReferences
                                    ._songFilesIdTable(db)
                                    .id,
                              )
                              as T;
                    }
                    if (thumbnail) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.thumbnail,
                                referencedTable: $$SongsTableReferences
                                    ._thumbnailTable(db),
                                referencedColumn: $$SongsTableReferences
                                    ._thumbnailTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$SongsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SongsTable,
      Song,
      $$SongsTableFilterComposer,
      $$SongsTableOrderingComposer,
      $$SongsTableAnnotationComposer,
      $$SongsTableCreateCompanionBuilder,
      $$SongsTableUpdateCompanionBuilder,
      (Song, $$SongsTableReferences),
      Song,
      PrefetchHooks Function({bool songFilesId, bool thumbnail})
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      required String settingKey,
      required String settingValue,
      Value<int> rowid,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<String> settingKey,
      Value<String> settingValue,
      Value<int> rowid,
    });

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get settingKey => $composableBuilder(
    column: $table.settingKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get settingValue => $composableBuilder(
    column: $table.settingValue,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get settingKey => $composableBuilder(
    column: $table.settingKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get settingValue => $composableBuilder(
    column: $table.settingValue,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get settingKey => $composableBuilder(
    column: $table.settingKey,
    builder: (column) => column,
  );

  GeneratedColumn<String> get settingValue => $composableBuilder(
    column: $table.settingValue,
    builder: (column) => column,
  );
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsTable,
          Setting,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
          Setting,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> settingKey = const Value.absent(),
                Value<String> settingValue = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion(
                settingKey: settingKey,
                settingValue: settingValue,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String settingKey,
                required String settingValue,
                Value<int> rowid = const Value.absent(),
              }) => SettingsCompanion.insert(
                settingKey: settingKey,
                settingValue: settingValue,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsTable,
      Setting,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
      Setting,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SongFilesTableTableManager get songFiles =>
      $$SongFilesTableTableManager(_db, _db.songFiles);
  $$ThumbnailsTableTableManager get thumbnails =>
      $$ThumbnailsTableTableManager(_db, _db.thumbnails);
  $$SongsTableTableManager get songs =>
      $$SongsTableTableManager(_db, _db.songs);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}
