import 'package:flutter/material.dart';
import '../models/tempat_wisata.dart';
import 'detail_tempat_wisata.dart';

List<TempatWisata> tempatWisataList = [
  TempatWisata(
    nama: 'Pantai Indah',
    deskripsi: 'Pantai dengan pasir putih dan pemandangan matahari terbenam.',
    gambar: 'assets/images/pantai.jpg',
    hargaTiket: 15000,
    lokasi: 'Bali, Indonesia',
    rating: 4.5,
  ),
  TempatWisata(
    nama: 'Air Terjun Sejuk',
    deskripsi: 'Air terjun alami dengan suasana yang asri dan sejuk.',
    gambar: 'assets/images/air_terjun.jpg',
    hargaTiket: 10000,
    lokasi: 'Lombok, Indonesia',
    rating: 4.2,
  ),
  TempatWisata(
    nama: 'Gunung Rinjani',
    deskripsi: 'Gunung Rinjani adalah gunung terindah se-Indonesia.',
    gambar: 'assets/images/rinjani.jpg',
    hargaTiket: 65000,
    lokasi: 'NTB, Indonesia',
    rating: 4.8,
  ),
  TempatWisata(
    nama: 'Desa Baduy',
    deskripsi:
        'Desa baduy adalah sebuah desa yang terletak di Kabupaten Badung.',
    gambar: 'assets/images/baduy.jpg',
    hargaTiket: 25000,
    lokasi: 'Banten, Indonesia',
    rating: 4.3,
  ),
  TempatWisata(
    nama: 'Danau Toba',
    deskripsi: 'Danau Toba adalah danau yang indah di pulau Sumatera.',
    gambar: 'assets/images/toba.jpg',
    hargaTiket: 25000,
    lokasi: 'Sumatera Utara, Indonesia',
    rating: 4.3,
  ),
];

class DaftarTempatWisataPage extends StatefulWidget {
  const DaftarTempatWisataPage({super.key});

  @override
  DaftarTempatWisataPageState createState() => DaftarTempatWisataPageState();
}

class DaftarTempatWisataPageState extends State<DaftarTempatWisataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Tempat Wisata'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: tempatWisataList.length,
              itemBuilder: (context, index) {
                final tempat = tempatWisataList[index];
                return Card(
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: Image.asset(
                      tempat.gambar,
                      width: 80,
                      fit: BoxFit.cover,
                    ),
                    title: Text(
                      tempat.nama,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tempat.lokasi,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.star, color: Colors.amber, size: 16),
                            Text(
                              '${tempat.rating}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Text(
                          tempat.deskripsi,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    trailing: IconButton(
                      icon: Icon(
                        tempat.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: tempat.isFavorite ? Colors.red : null,
                      ),
                      onPressed: () {
                        setState(() {
                          tempat.isFavorite = !tempat.isFavorite;
                        });
                      },
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              DetailTempatWisataPage(tempat: tempat),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
