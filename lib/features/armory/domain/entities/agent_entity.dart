import 'package:equatable/equatable.dart';

class AgentEntity extends Equatable {
  const AgentEntity({
    required this.status,
    required this.data,
  });
  final int status;
  final List<AgentData> data;

  @override
  List<Object?> get props => [status, data];
}

class AgentData extends Equatable {
  const AgentData({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.abilities,
    required this.isPlayableCharacter,
    required this.backgroundGradientColors,
    required this.developerName,
    required this.displayIcon,
    required this.displayIconSmall,
    required this.isAvailableForTest,
    required this.isBaseContent,
    this.role,
    this.characterTags,
    this.bustPortrait,
    this.fullPortrait,
    this.fullPortraitV2,
    this.killfeedPortrait,
    this.background,
    this.assetPath,
    this.isFullPortraitRightFacing,
    this.recruitmentData,
    this.voiceLine,
  });
  final String uuid;
  final String displayName;
  final String description;
  final String developerName;
  final dynamic characterTags;
  final String displayIcon;
  final String displayIconSmall;
  final String? bustPortrait;
  final String? fullPortrait;
  final String? fullPortraitV2;
  final String? killfeedPortrait;
  final String? background;
  final List<String> backgroundGradientColors;
  final String? assetPath;
  final bool? isFullPortraitRightFacing;
  final bool isPlayableCharacter;
  final bool isAvailableForTest;
  final bool isBaseContent;
  final AgentRole? role;
  final dynamic recruitmentData;
  final List<AgentAbility> abilities;
  final dynamic voiceLine;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        description,
        developerName,
        characterTags,
        displayIcon,
        displayIconSmall,
        bustPortrait,
        fullPortrait,
        fullPortraitV2,
        killfeedPortrait,
        background,
        backgroundGradientColors,
        assetPath,
        isFullPortraitRightFacing,
        isPlayableCharacter,
        isAvailableForTest,
        isBaseContent,
        role,
        recruitmentData,
        abilities,
        voiceLine,
      ];
}

class AgentAbility extends Equatable {
  const AgentAbility({
    required this.displayName,
    this.slot,
    this.description,
    this.displayIcon,
  });
  final String? slot;
  final String displayName;
  final String? description;
  final String? displayIcon;

  @override
  List<Object?> get props => [
        slot,
        displayName,
        description,
        displayIcon,
      ];
}

class AgentRole extends Equatable {
  const AgentRole({
    required this.uuid,
    required this.displayName,
    this.description,
    this.displayIcon,
    this.assetPath,
  });
  final String uuid;
  final String displayName;
  final String? description;
  final String? displayIcon;
  final String? assetPath;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        description,
        displayIcon,
        assetPath,
      ];
}
