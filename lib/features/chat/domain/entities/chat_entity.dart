import 'package:equatable/equatable.dart';

class ChatEntity extends Equatable {
  const ChatEntity({
    required this.id,
    required this.chatName,
    required this.isGroupChat,
    required this.users,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
    this.latestMessage,
  });
  final String id;
  final String chatName;
  final bool isGroupChat;
  final List<User> users;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;
  final LatestMessage? latestMessage;

  @override
  List<Object?> get props =>
      [id, chatName, isGroupChat, users, createdAt, updatedAt];
}

class LatestMessage extends Equatable {
  const LatestMessage({
    required this.id,
    required this.sender,
    required this.content,
    required this.receiver,
    required this.chat,
    required this.readBy,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  final String id;
  final Sender sender;
  final String content;
  final String receiver;
  final String chat;
  final List<dynamic> readBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  @override
  List<Object?> get props => [
        id,
        sender,
        content,
        receiver,
        chat,
        readBy,
        createdAt,
        updatedAt,
      ];
}

class Sender extends Equatable {
  const Sender({
    required this.id,
    required this.username,
    required this.email,
  });
  final String id;
  final String username;
  final String email;

  @override
  List<Object?> get props => [id, username, email];
}

class User extends Equatable {
  const User({
    required this.id,
    required this.username,
    required this.fullname,
    required this.email,
    required this.isAdmin,
    required this.imageProfile,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  final String id;
  final String username;
  final String fullname;
  final String email;
  final bool isAdmin;
  final String imageProfile;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  @override
  List<Object?> get props => [
        id,
        username,
        fullname,
        email,
        isAdmin,
        imageProfile,
        createdAt,
        updatedAt,
      ];
}
