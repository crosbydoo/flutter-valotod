import 'package:equatable/equatable.dart';

class AgentDetailEntity extends Equatable {
  const AgentDetailEntity({
    required this.status,
    required this.data,
  });
  final int status;
  final AgentDetailData data;

  @override
  List<Object?> get props => [status, data];
}

class AgentDetailData extends Equatable {
  const AgentDetailData({
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
    required this.fullPortrait,
    required this.fullPortraitV2,
    required this.background,
    required this.role,
    this.characterTags,
    this.bustPortrait,
    this.killfeedPortrait,
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
  final String fullPortrait;
  final String fullPortraitV2;
  final String? killfeedPortrait;
  final String background;
  final List<String> backgroundGradientColors;
  final String? assetPath;
  final bool? isFullPortraitRightFacing;
  final bool isPlayableCharacter;
  final bool isAvailableForTest;
  final bool isBaseContent;
  final AgentDetailRole role;
  final dynamic recruitmentData;
  final List<AgentDetailAbility> abilities;
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

class AgentDetailAbility extends Equatable {
  const AgentDetailAbility({
    required this.displayName,
    required this.slot,
    required this.description,
    required this.displayIcon,
  });
  final String slot;
  final String displayName;
  final String description;
  final String displayIcon;

  @override
  List<Object?> get props => [
        slot,
        displayName,
        description,
        displayIcon,
      ];
}

class AgentDetailRole extends Equatable {
  const AgentDetailRole({
    required this.uuid,
    required this.displayName,
    required this.description,
    required this.displayIcon,
    this.assetPath,
  });
  final String uuid;
  final String displayName;
  final String description;
  final String displayIcon;
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
