import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/profile/domain/entities/profile_entity.dart';

part 'profile_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class ProfileModel extends ProfileEntity {
  const ProfileModel({
    required super.id,
    required super.username,
    required super.email,
    required super.isAdmin,
    required super.imageProfile,
    required super.updatedAt,
    required super.fullname,
    required super.createdAt,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);
}
