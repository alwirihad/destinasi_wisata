// lib/pages/detail_tempat_wisata.dart

import 'package:flutter/material.dart';
import '../models/tempat_wisata.dart';

class DetailTempatWisataPage extends StatelessWidget {
  final TempatWisata tempat;

  const DetailTempatWisataPage({super.key, required this.tempat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tempat.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              tempat.gambar,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            Text(
              tempat.nama,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Lokasi: ${tempat.lokasi}',
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 20),
                Text(
                  '${tempat.rating}',
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(
              'Harga Tiket: Rp ${tempat.hargaTiket}',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
            const SizedBox(height: 16),
            Text(
              tempat.deskripsi,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
