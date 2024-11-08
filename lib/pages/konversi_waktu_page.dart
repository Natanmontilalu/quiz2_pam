import 'package:flutter/material.dart';

class KonversiWaktuPage extends StatefulWidget {
  const KonversiWaktuPage({super.key});

  @override
  _KonversiWaktuPageState createState() => _KonversiWaktuPageState();
}

class _KonversiWaktuPageState extends State<KonversiWaktuPage> {
  final TextEditingController _hourController = TextEditingController();
  final TextEditingController _minuteController = TextEditingController();
  String wib = '';
  String wita = '';
  String wit = '';

  String convertToZone(int hour, int minute, int offset) {
    int convertedHour = (hour + offset) % 24;
    return '${convertedHour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
  }

  void calculateTimeZones() {
    int? hour = int.tryParse(_hourController.text);
    int? minute = int.tryParse(_minuteController.text);

    if (hour != null &&
        minute != null &&
        hour >= 0 &&
        hour < 24 &&
        minute >= 0 &&
        minute < 60) {
      setState(() {
        wib = convertToZone(hour, minute, 0); 
        wita = convertToZone(hour, minute, 1); 
        wit = convertToZone(hour, minute, 2);
      });
    } else {
      setState(() {
        wib = 'Invalid Time';
        wita = 'Invalid Time';
        wit = 'Invalid Time';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konversi Waktu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _hourController,
              decoration: const InputDecoration(
                labelText: 'Masukkan Jam (0-23)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),

            TextField(
              controller: _minuteController,
              decoration: const InputDecoration(
                labelText: 'Masukkan Menit (0-59)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: calculateTimeZones,
              child: const Text('Konversi Waktu'),
            ),
            const SizedBox(height: 20),

            const Text(
              'Hasil Konversi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('WIB: $wib'),
            Text('WITA: $wita'),
            Text('WIT: $wit'),
          ],
        ),
      ),
    );
  }
}
