// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentModel _$AgentModelFromJson(Map<String, dynamic> json) => AgentModel(
      status: json['status'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => AgentDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

AgentDataModel _$AgentDataModelFromJson(Map<String, dynamic> json) =>
    AgentDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      description: json['description'] as String,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => AgentAbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPlayableCharacter: json['isPlayableCharacter'] as bool,
      backgroundGradientColors:
          (json['backgroundGradientColors'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      developerName: json['developerName'] as String,
      displayIcon: json['displayIcon'] as String,
      displayIconSmall: json['displayIconSmall'] as String,
      isAvailableForTest: json['isAvailableForTest'] as bool,
      isBaseContent: json['isBaseContent'] as bool,
    );

AgentAbilityModel _$AgentAbilityModelFromJson(Map<String, dynamic> json) =>
    AgentAbilityModel(
      displayName: json['displayName'] as String,
    );

AgentRoleModel _$AgentRoleModelFromJson(Map<String, dynamic> json) =>
    AgentRoleModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
    );
