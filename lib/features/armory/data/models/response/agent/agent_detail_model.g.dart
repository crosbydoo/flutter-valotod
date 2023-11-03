// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agent_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AgentDetailModel _$AgentDetailModelFromJson(Map<String, dynamic> json) =>
    AgentDetailModel(
      status: json['status'] as int,
      data: AgentDetailDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

AgentDetailDataModel _$AgentDetailDataModelFromJson(
        Map<String, dynamic> json) =>
    AgentDetailDataModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      description: json['description'] as String,
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) =>
              AgentDetailAbilityModel.fromJson(e as Map<String, dynamic>))
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
      fullPortrait: json['fullPortrait'] as String,
      fullPortraitV2: json['fullPortraitV2'] as String,
      background: json['background'] as String,
      role: AgentDetailRoleModel.fromJson(json['role'] as Map<String, dynamic>),
    );

AgentDetailAbilityModel _$AgentDetailAbilityModelFromJson(
        Map<String, dynamic> json) =>
    AgentDetailAbilityModel(
      displayName: json['displayName'] as String,
      slot: json['slot'] as String,
      description: json['description'] as String,
      displayIcon: json['displayIcon'] as String,
    );

AgentDetailRoleModel _$AgentDetailRoleModelFromJson(
        Map<String, dynamic> json) =>
    AgentDetailRoleModel(
      uuid: json['uuid'] as String,
      displayName: json['displayName'] as String,
      description: json['description'] as String,
      displayIcon: json['displayIcon'] as String,
    );
