import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/chat/domain/entities/chat_entity.dart';

part 'chat_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class ChatModel extends ChatEntity {
  const ChatModel({
    required super.id,
    required super.chatName,
    required super.isGroupChat,
    required List<UserModel> super.users,
    required super.createdAt,
    required super.updatedAt,
    required super.v,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) =>
      _$ChatModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class LatestMessageModel extends LatestMessage {
  const LatestMessageModel({
    required super.id,
    required SenderModel super.sender,
    required super.content,
    required super.receiver,
    required super.chat,
    required super.readBy,
    required super.createdAt,
    required super.updatedAt,
    required super.v,
  });
  factory LatestMessageModel.fromJson(Map<String, dynamic> json) =>
      _$LatestMessageModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class SenderModel extends Sender {
  const SenderModel({
    required super.id,
    required super.username,
    required super.email,
  });

  factory SenderModel.fromJson(Map<String, dynamic> json) =>
      _$SenderModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class UserModel extends User {
  const UserModel({
    required super.id,
    required super.username,
    required super.fullname,
    required super.email,
    required super.isAdmin,
    required super.imageProfile,
    required super.createdAt,
    required super.updatedAt,
    required super.v,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
