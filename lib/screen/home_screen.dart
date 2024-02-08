import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'third_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isFirstBoxActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView( 
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30, 
              child: ClipOval(
                child: Image.asset("assets/images/tankhapay_logo.jpg"),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tankha',
                    style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Text(
                  'Pay',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24, 
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
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
              child: buildOptionBox(
                'I am an Employer',
                'Provide social security benefit to all your associates.',
                isFirstBoxActive,
              ),
            ),
            const SizedBox(height: 15),
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
              
              child: buildOptionBox(
                'I am an Employee',
                'Get social security benefit from your employer.',
                !isFirstBoxActive,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionBox(String title, String subtitle, bool isActive) => SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width - 40, 
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: isActive ? Colors.blue : Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            border: Border.all(color: Colors.blue), 
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      );

}
