import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/armory/domain/entities/agent_entity.dart';

part 'agent_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentModel extends AgentEntity {
  const AgentModel({
    required super.status,
    required List<AgentDataModel> super.data,
  });
  factory AgentModel.fromJson(Map<String, dynamic> json) =>
      _$AgentModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentDataModel extends AgentData {
  const AgentDataModel({
    required super.uuid,
    required super.displayName,
    required super.description,
    required List<AgentAbilityModel> super.abilities,
    required super.isPlayableCharacter,
    required super.backgroundGradientColors,
    required super.developerName,
    required super.displayIcon,
    required super.displayIconSmall,
    required super.isAvailableForTest,
    required super.isBaseContent,
  });

  factory AgentDataModel.fromJson(Map<String, dynamic> json) =>
      _$AgentDataModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentAbilityModel extends AgentAbility {
  const AgentAbilityModel({required super.displayName});
  factory AgentAbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AgentAbilityModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class AgentRoleModel extends AgentRole {
  const AgentRoleModel({required super.uuid, required super.displayName});

  factory AgentRoleModel.fromJson(Map<String, dynamic> json) =>
      _$AgentRoleModelFromJson(json);
}
