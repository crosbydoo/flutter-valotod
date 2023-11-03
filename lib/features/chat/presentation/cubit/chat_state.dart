part of 'chat_cubit.dart';

abstract class ChatState {}

class ChatInitial extends ChatState {}

class ChatLoading extends ChatState {}

class ChatSuccess extends ChatState {
  ChatSuccess(this.result);

  final ChatEntity result;
}

class ChatFailure extends ChatState {
  ChatFailure(this.msg);

  final String msg;
}
