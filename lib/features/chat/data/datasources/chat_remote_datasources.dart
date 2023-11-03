import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/features/chat/data/models/response/chat_model.dart';
import 'package:valotod_app/features/chat/domain/entities/chat_entity.dart';

abstract class ChatRemoteDatasource {
  Future<ChatEntity> getChats();
  // Future<RegisterEntity> register(RegisterBody body);
}

class ChatRemoteDatasourceImpl implements ChatRemoteDatasource {
  ChatRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<ChatEntity> getChats() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        ApiPath.chats,
      );

      return ChatModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
