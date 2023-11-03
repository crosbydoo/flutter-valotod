import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_detail_entity.dart';

part 'agent_detail_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentDetailModel extends AgentDetailEntity {
  const AgentDetailModel({
    required super.status,
    required AgentDetailDataModel super.data,
  });
  factory AgentDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentDetailDataModel extends AgentDetailData {
  const AgentDetailDataModel({
    required super.uuid,
    required super.displayName,
    required super.description,
    required List<AgentDetailAbilityModel> super.abilities,
    required super.isPlayableCharacter,
    required super.backgroundGradientColors,
    required super.developerName,
    required super.displayIcon,
    required super.displayIconSmall,
    required super.isAvailableForTest,
    required super.isBaseContent,
    required super.fullPortrait,
    required super.fullPortraitV2,
    required super.background,
    required AgentDetailRoleModel super.role,
  });

  factory AgentDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentDetailAbilityModel extends AgentDetailAbility {
  const AgentDetailAbilityModel(
      {required super.displayName,
      required super.slot,
      required super.description,
      required super.displayIcon});
  factory AgentDetailAbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailAbilityModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentDetailRoleModel extends AgentDetailRole {
  const AgentDetailRoleModel({
    required super.uuid,
    required super.displayName,
    required super.description,
    required super.displayIcon,
  });

  factory AgentDetailRoleModel.fromJson(Map<String, dynamic> json) =>
      _$AgentDetailRoleModelFromJson(json);
}
