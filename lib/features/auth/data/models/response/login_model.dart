import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/auth/domain/entities/login_entity.dart';

part 'login_model.g.dart';

@JsonSerializable(createToJson: false)
class LoginModel extends LoginEntity {
  const LoginModel({
    required super.id,
    required super.username,
    required super.email,
    required super.isAdmin,
    required super.imageProfile,
    required super.updatedAt,
    required super.userToken,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}
