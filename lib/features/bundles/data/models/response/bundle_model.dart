import 'package:json_annotation/json_annotation.dart';
import 'package:valotod_app/features/bundles/domain/entities/bundle_entity.dart';

part 'bundle_model.g.dart';

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class BundleModel extends BundleEntity {
  const BundleModel({
    required super.status,
    required List<BundleDataModel> super.data,
  });
  factory BundleModel.fromJson(Map<String, dynamic> json) =>
      _$BundleModelFromJson(json);
}

@JsonSerializable(
  createToJson: false,
  createFactory: true,
)
class BundleDataModel extends BundleData {
  const BundleDataModel({
    required super.uuid,
    required super.displayName,
    required super.displayNameSubText,
    required super.description,
    required super.extraDescription,
    required super.promoDescription,
    required super.useAdditionalContext,
    required super.displayIcon,
    required super.displayIcon2,
    required super.verticalPromoImage,
    required super.assetPath,
  });
  factory BundleDataModel.fromJson(Map<String, dynamic> json) =>
      _$BundleDataModelFromJson(json);
}
