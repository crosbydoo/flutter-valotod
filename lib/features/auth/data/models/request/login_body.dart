import 'package:json_annotation/json_annotation.dart';

part 'login_body.g.dart';

@JsonSerializable(createToJson: true, createFactory: false)
class LoginBody {
  LoginBody({
    required this.username,
    required this.password,
  });
  String username;
  String password;

  Map<String, dynamic> toJson() => _$LoginBodyToJson(this);
}
