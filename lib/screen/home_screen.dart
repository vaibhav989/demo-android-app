import 'package:flutter/material.dart';
import 'second_screen.dart'; 
import 'third_screen.dart'; 


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFirstBoxActive = true; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Tankhapay',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isFirstBoxActive = true;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: SizedBox(
                height: 120,
                width: 480,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: isFirstBoxActive ? Colors.blue : Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I am an Employer',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black, 
                        ),
                      ),
                      Text(
                        'Provide social security benefit to all your associates.',
                        style: TextStyle(
                          color: Colors.black, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  isFirstBoxActive = false;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ThirdScreen()),
                );
              },
              child: SizedBox(
                height: 120,
                width: 480,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: isFirstBoxActive ? Colors.white : Colors.blue,
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I am an Employee',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black, 
                        ),
                      ),
                      Text(
                        'Get social security benefit from your employer.',
                        style: TextStyle(
                          color: Colors.black, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
