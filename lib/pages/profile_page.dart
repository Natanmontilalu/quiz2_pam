import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/natan2.jpg'),
            ),
            SizedBox(height: 10),
            Text('Andreas Nataniel Montilalu'),
            Text('124220020'),
            Text('Jaweten, 07 September 2004'),
            Text('Olahraga'),
          ],
        ),
      ),
    );
  }
}
