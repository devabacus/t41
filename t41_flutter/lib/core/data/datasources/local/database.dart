
import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';
import 'database_types.dart';

import 'package:drift/native.dart';  // ДОБАВЬТЕ эту строку
import 'package:path_provider/path_provider.dart';  // Уже должна быть
import 'package:path/path.dart' as p;  // Уже должна быть
import 'dart:io';  // ДОБАВЬТЕ эту строку

import 'tables/sync_metadata_table.dart';
import '../../../../features/configuration/data/datasources/local/tables/configuration_table.dart';
// === GENERATED_IMPORTS_START ===

// === GENERATED_IMPORTS_END ===

part 'database.g.dart';

@DriftDatabase(tables: [
    SyncMetadataTable,
    ConfigurationTable,
// === GENERATED_TABLES_START ===

// === GENERATED_TABLES_END ===
])
class AppDatabase extends _$AppDatabase {
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 2;

@override
MigrationStrategy get migration => MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        // === GENERATED_MIGRATION_START ===
        if (from < 2) {
            // Добавление новой таблицы или изменение схемы
        }
        
        // === GENERATED_MIGRATION_END ===
        }        
    );

  // static QueryExecutor _openConnection() {
  //   return driftDatabase(
  //     name: 't2_flutter',
  //   );
  // }

  static QueryExecutor _openConnection() {
    // Используем LazyDatabase для асинхронной инициализации
    return LazyDatabase(() async {
      // Получаем папку для хранения данных приложения
      final dbFolder = await getApplicationDocumentsDirectory();
      
      // Создаем файл базы данных
      final file = File(p.join(dbFolder.path, 't2_flutter.sqlite'));
      
      // Возвращаем NativeDatabase с файлом
      return NativeDatabase(file);
    });
  }

}


