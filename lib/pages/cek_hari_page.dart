import 'package:flutter/material.dart';

class CekHariPage extends StatefulWidget {
  const CekHariPage({super.key});

  @override
  _CekHariPageState createState() => _CekHariPageState();
}

class _CekHariPageState extends State<CekHariPage> {
  final TextEditingController _controller = TextEditingController();
  String result = "";

  void checkDay(int dayNumber) {
    List<String> days = [
      "Senin",
      "Selasa",
      "Rabu",
      "Kamis",
      "Jumat",
      "Sabtu",
      "Minggu"
    ];
    setState(() {
      result = days[dayNumber - 1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cek Hari')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration:
                  const InputDecoration(labelText: 'Masukkan Nomor (1-7)'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () {
                int? day = int.tryParse(_controller.text);
                if (day != null && day >= 1 && day <= 7) {
                  checkDay(day);
                }
              },
              child: const Text('Cek'),
            ),
            Text('Hari: $result'),
          ],
        ),
      ),
    );
  }
}
