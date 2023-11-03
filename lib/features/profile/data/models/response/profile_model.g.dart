// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      id: json['_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool,
      imageProfile: json['imageProfile'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      fullname: json['fullname'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
    );
