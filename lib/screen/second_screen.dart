import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employer'),
        centerTitle: true,
      ), 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'TankhaPay',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40), 
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter your mobile number',
                  prefixIcon: const Icon(Icons.phone), 
                  border: OutlineInputBorder( 
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blue, 
              ),
              child: const Text('Send Code'),
            ),
          ],
        ),
      ),
    );
  }
}
