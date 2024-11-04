class TempatWisata {
  final String nama;
  final String deskripsi;
  final String gambar;
  final double hargaTiket;
  final String lokasi;
  final double rating;
  bool isFavorite;

  TempatWisata({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.hargaTiket,
    required this.lokasi,
    required this.rating, 
    this.isFavorite = false,
  });
}
