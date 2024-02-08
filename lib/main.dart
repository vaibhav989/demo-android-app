import 'package:flutter/material.dart';
import 'package:task1/screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );

  }
}

void main(){
  runApp(const MyApp());
}
