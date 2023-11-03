import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/features/chat/domain/entities/chat_entity.dart';

abstract class ChatRepository {
  Future<Either<Failure, ChatEntity>> getChats();
  // Future<Either<Failure, RegisterEntity>> register(RegisterBody body);
}
