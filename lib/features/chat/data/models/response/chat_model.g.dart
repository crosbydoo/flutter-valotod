// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChatModel _$ChatModelFromJson(Map<String, dynamic> json) => ChatModel(
      id: json['id'] as String,
      chatName: json['chatName'] as String,
      isGroupChat: json['isGroupChat'] as bool,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int,
    );

LatestMessageModel _$LatestMessageModelFromJson(Map<String, dynamic> json) =>
    LatestMessageModel(
      id: json['id'] as String,
      sender: SenderModel.fromJson(json['sender'] as Map<String, dynamic>),
      content: json['content'] as String,
      receiver: json['receiver'] as String,
      chat: json['chat'] as String,
      readBy: json['readBy'] as List<dynamic>,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int,
    );

SenderModel _$SenderModelFromJson(Map<String, dynamic> json) => SenderModel(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
    );

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      id: json['id'] as String,
      username: json['username'] as String,
      fullname: json['fullname'] as String,
      email: json['email'] as String,
      isAdmin: json['isAdmin'] as bool,
      imageProfile: json['imageProfile'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      v: json['v'] as int,
    );
