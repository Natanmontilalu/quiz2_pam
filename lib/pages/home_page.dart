import 'package:flutter/material.dart';
import 'piramida_page.dart';
import 'konversi_waktu_page.dart';
import 'cek_hari_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz 2 Pemrograman Aplikasi Mobile SI-B'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PiramidaPage()),
                );
              },
              child: Text('Piramida'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KonversiWaktuPage()),
                );
              },
              child: Text('Konversi Waktu'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CekHariPage()),
                );
              },
              child: Text('Cek Hari'),
            ),
          ],
        ),
      ),
    );
  }
}
