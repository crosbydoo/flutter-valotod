import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/auth/domain/entities/register_entity.dart';

part 'register_model.g.dart';

@JsonSerializable(createToJson: false)
class RegisterModel extends RegisterEntity {
  const RegisterModel({
    required super.username,
    required super.email,
    required super.fullname,
    required super.password,
    required super.isAdmin,
    required super.imageProfile,
    required super.id,
    required super.createdAt,
    required super.updatedAt,
    required super.v,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterModelFromJson(json);
}
