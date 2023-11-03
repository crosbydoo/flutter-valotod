// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterModel _$RegisterModelFromJson(Map<String, dynamic> json) =>
    RegisterModel(
      username: json['username'] as String,
      email: json['email'] as String,
      fullname: json['fullname'] as String,
      password: json['password'] as String,
      isAdmin: json['isAdmin'] as bool,
      imageProfile: json['imageProfile'] as String,
      id: json['_id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int,
    );
