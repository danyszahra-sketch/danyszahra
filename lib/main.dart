import 'package:flutter/material.dart';

void main() {
  runApp(Coba());
}

class Coba extends StatelessWidget {
  Coba({super.key});

  Widget animasi({
    required Widget child,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 700),
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // BACKGROUND BIRU PASTEL
        backgroundColor: Color(0xffffc9ed),

        appBar: AppBar(
          title: Text('Coban Pelangi'),
          backgroundColor: Color(0xfffecdeb),
          foregroundColor: Color(0xff840946),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              // =========================
              // FOTO
              // =========================
              Container(
                width: double.infinity,
                child: Image.asset(
                  'assets/Cobanpelangi.jpg',
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ),

              // =========================
              // JUDUL
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Sejarah Singkat Coban Pelangi',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff70063b),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              // =========================
              // SEJARAH
              // =========================
              animasi(
                child: Container(
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 20),
                  child: Text(
                    'Coban Pelangi merupakan salah satu wisata air terjun yang berada di Kecamatan Poncokusumo, Kabupaten Malang, Jawa Timur.'
                    'Nama “Pelangi” berasal dari fenomena pelangi yang sering terlihat di sekitar air terjun ketika terkena sinar matahari.'
                    'Coban Pelangi berada di kawasan lereng Gunung Semeru dan mulai dikenal sebagai tempat wisata karena keindahan alamnya.'
                    'Seiring waktu, kawasan ini dikembangkan sebagai objek wisata alam dan menjadi salah satu tempat yang banyak dikunjungi wisatawan,'
                    'terutama karena pemandangan air terjun dan suasana pegunungannya.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Color(0xFF333333),
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),

              // =========================
              // LOKASI DAN KONTAK
              // =========================
              animasi(
                child: Container(
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Color(0xffe3afd3),
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // =========================
                      // LOKASI
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lokasi',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffb01a71),
                              ),
                            ),
                            SizedBox(height: 8),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.location_on,
                                  size: 22,
                                  color: Color(0xffb84f9e),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'Coban Pelangi\n'
                                    'Desa Ngadas,\n'
                                    'Kecamatan Poncokusumo,\n'
                                    'Kabupaten Malang, Jawa Timur',
                                    style: TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // =========================
                      // GARIS PEMISAH
                      // =========================
                      Container(
                        height: 150,
                        width: 1,
                        color: Color(0xffe3afd8),
                        margin: EdgeInsets.symmetric(horizontal: 16),
                      ),

                      // =========================
                      // CONTACT
                      // =========================
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Saya',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffab1993),
                              ),
                            ),

                            SizedBox(height: 12),

                            // WHATSAPP
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 20,
                                  color: Color(0xffb84f9e),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    '081336518060',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 12),

                            // GARIS PEMISAH
                            Container(
                              height: 1,
                              color: Color(0xffe3afd6),
                            ),

                            SizedBox(height: 12),

                            // EMAIL
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.email,
                                  size: 20,
                                  color: Color(0xffb84f8d),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Text(
                                    'denyszahra@gmail.com',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF333333),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
