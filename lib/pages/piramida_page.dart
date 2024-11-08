import 'package:flutter/material.dart';

class PiramidaPage extends StatefulWidget {
  const PiramidaPage({super.key});

  @override
  _PiramidaPageState createState() => _PiramidaPageState();
}

class _PiramidaPageState extends State<PiramidaPage> {
  final TextEditingController _baseController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  double volume = 0;
  double surfaceArea = 0;

  void calculate() {
    double base = double.parse(_baseController.text);
    double height = double.parse(_heightController.text);
    setState(() {
      volume = (1 / 3) * base * base * height;
      surfaceArea = base * base + 4 * (0.5 * base * height);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Piramida'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _baseController,
              decoration: const InputDecoration(labelText: 'Panjang Alas'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _heightController,
              decoration: const InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: calculate,
              child: const Text('Hitung'),
            ),
            Text('Volume: $volume'),
            Text('Luas Permukaan: $surfaceArea'),
          ],
        ),
      ),
    );
  }
}
