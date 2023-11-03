extension ValoStringExtension on String {
  String valoCapitalize() {
    if (isEmpty) {
      return this;
    }

    // Memisahkan string menjadi kata-kata dan mengkapitalisasi setiap kata.
    var words = split(' ');
    words = words.map((word) {
      if (word.isEmpty) {
        return word;
      }
      return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
    }).toList();

    return words.join(' ');
  }

  String extractCategory() {
    final match = RegExp(r'::(.+)$').firstMatch(this);
    return match != null ? match.group(1)! : '';
  }
}
