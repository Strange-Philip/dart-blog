import 'package:yaroorm/migration.dart';

class CreateUsersTable extends Migration {
  @override
  void up(List actions) {
    final userSchema = Schema.create('users', (table) {
      return table
        ..id()
        ..string('name')
        ..string('email')
        ..string('password')
        ..timestamps();
    });

    actions.add(userSchema);
  }

  @override
  void down(List actions) {
    actions.add(Schema.dropIfExists('users'));
  }
}
