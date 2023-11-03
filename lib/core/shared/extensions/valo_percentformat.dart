extension ValoPercentExtension on double {
  double convertToPercentage(double maxFireRate) {
    if (maxFireRate <= 0) {
      throw ArgumentError('maxFireRate must be greater than 0');
    }

    return this / maxFireRate;
  }
}
