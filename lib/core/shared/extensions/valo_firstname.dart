extension GreetFirstName on String {
  String valoFirstName() {
    final parts = trim().split(' ');
    if (parts.length > 1) {
      // Mengambil kata pertama (Hi,) dan nama pertama.
      return '${parts.first} ${parts[1]}';
    } else {
      return this; // Mengembalikan string asli jika tidak ada spasi.
    }
  }
}
