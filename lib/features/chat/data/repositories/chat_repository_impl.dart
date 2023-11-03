import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:valotod_app/core/shared/models/error/failures.dart';
import 'package:valotod_app/features/chat/data/datasources/chat_remote_datasources.dart';
import 'package:valotod_app/features/chat/domain/entities/chat_entity.dart';
import 'package:valotod_app/features/chat/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  ChatRepositoryImpl(
    this.remoteDataSource,
  );

  final ChatRemoteDatasource remoteDataSource;

  @override
  Future<Either<Failure, ChatEntity>> getChats() async {
    try {
      final remoteGetChats = await remoteDataSource.getChats();

      return Right(remoteGetChats);
    } on DioException catch (e) {
      return Left(
        ServerFailure.fromJson(e.response!.data as Map<String, dynamic>),
      );
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}
