import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/spash/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Demo',
      theme: ThemeData.dark(),
      home: const Splashscreen(),
    );
  }
}

