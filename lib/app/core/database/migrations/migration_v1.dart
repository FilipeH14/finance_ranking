import 'package:finance_ranking/app/core/database/migrations/migration.dart';
import 'package:sqflite_common/sqlite_api.dart';

class MigrationV1 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
        create table operation(
          id Integer primary key autoincrement,
          description varchar(500) not null,
          date_time datetime,
          finished integer
        )
    ''');
  }

  @override
  void update(Batch batch) {

  }

}
