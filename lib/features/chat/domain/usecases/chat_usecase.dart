import 'package:dartz/dartz.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/core/usecase/usecase.dart';
import 'package:valotod_app/features/chat/domain/entities/chat_entity.dart';
import 'package:valotod_app/features/chat/domain/repositories/chat_repository.dart';

class ChatUsecase extends UseCase<ChatEntity, NoParams> {
  ChatUsecase(this.repository);

  final ChatRepository repository;

  @override
  Future<Either<Failure, ChatEntity>> call(NoParams params) {
    return repository.getChats();
  }
}
