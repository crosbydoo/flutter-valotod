// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => LoginModel(
      id: json['_id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool,
      imageProfile: json['imageProfile'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      userToken: json['userToken'] as String,
      fullname: json['fullname'] as String,
    );
