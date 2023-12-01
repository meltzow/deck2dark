import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@collection
@JsonSerializable(explicitToJson: true)
class Account {
  Id id = Isar.autoIncrement;
  final String username;
  final String password;
  final String authData;
  final String url;
  final bool isAuthenticated;
  List<String>? doingStates = ['Offen', 'In Arbeit'];
  List<String>? doneStates = ['Erledigt'];

  Account(
      {required this.username,
      required this.password,
      required this.authData,
      required this.url,
      required this.isAuthenticated});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
        username: json['username'] as String,
        password: json['password'] as String,
        authData: json['authData'] as String,
        url: json['url'] as String,
        isAuthenticated: json['isAuthenticated'] as bool);
  }

  Map<String, dynamic> toJson() => _$AccountToJson(this);
}
