import 'package:json_annotation/json_annotation.dart';
import 'package:yaroorm/yaroorm.dart';

part 'user.g.dart';

@JsonSerializable()
class User extends Entity<int, User> {
  final String name;

  final String email;

  final String password;

  User(this.name, this.email, this.password);

  @override
  Map<String, dynamic> toMap() => _$UserToJson(this);

  static User fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  bool get enableTimestamps => true;

  Map<String, dynamic> get toPublic => toJson()..remove('password');
}
