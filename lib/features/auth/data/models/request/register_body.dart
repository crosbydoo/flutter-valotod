import 'package:json_annotation/json_annotation.dart';

part 'register_body.g.dart';

@JsonSerializable(createToJson: true, createFactory: false)
class RegisterBody {
  RegisterBody({
    required this.email,
    required this.fullname,
    required this.username,
    required this.password,
  });
  String email;
  String password;
  String fullname;
  String username;

  Map<String, dynamic> toJson() => _$RegisterBodyToJson(this);
}
