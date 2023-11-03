import 'package:dio/dio.dart';
import 'package:valotod_app/core/constant/api_path.dart';
import 'package:valotod_app/features/armory/data/models/response/agent/agent_detail_model.dart';
import 'package:valotod_app/features/armory/data/models/response/agent/agent_model.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';

abstract class AgentRemoteDatasource {
  Future<AgentEntity> getAgents();
  Future<AgentDetailEntity> getAgentDetail(String uuid);
}

class AgentRemoteDatasourceImpl implements AgentRemoteDatasource {
  AgentRemoteDatasourceImpl(this._client);

  final Dio _client;

  @override
  Future<AgentDetailEntity> getAgentDetail(String uuid) async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        '${ApiPath.valoAgents}/$uuid',
      );
      print('COKI $response');
      return AgentDetailModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }

  @override
  Future<AgentEntity> getAgents() async {
    try {
      final response = await _client.get<Map<String, dynamic>>(
        ApiPath.valoAgents,
      );

      return AgentModel.fromJson(response.data!);
    } on DioException catch (e) {
      throw DioException(
        requestOptions: e.requestOptions,
        error: e.error,
        response: e.response,
      );
    }
  }
}
