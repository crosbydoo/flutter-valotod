import 'package:equatable/equatable.dart';

class PlayerCardEntity extends Equatable {
  const PlayerCardEntity({
    required this.status,
    required this.data,
  });
  final int status;
  final List<PlayerCardData> data;

  @override
  List<Object?> get props => [status, data];
}

class PlayerCardData extends Equatable {
  const PlayerCardData({
    required this.uuid,
    required this.displayName,
    required this.isHiddenIfNotOwned,
    required this.themeUuid,
    required this.displayIcon,
    required this.smallArt,
    required this.wideArt,
    required this.largeArt,
    required this.assetPath,
  });
  final String uuid;
  final String displayName;
  final bool isHiddenIfNotOwned;
  final dynamic themeUuid;
  final String displayIcon;
  final String smallArt;
  final String wideArt;
  final String largeArt;
  final String assetPath;

  @override
  List<Object?> get props => [
        uuid,
        displayName,
        isHiddenIfNotOwned,
        themeUuid,
        displayIcon,
        smallArt,
        wideArt,
        largeArt,
        assetPath,
      ];
}
