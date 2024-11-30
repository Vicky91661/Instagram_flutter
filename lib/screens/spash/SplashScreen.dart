import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login/loginScreen.dart';
import 'package:instagram_clone/widgets/UiHelper.dart';
import 'dart:async';  // Importing Timer
class Splashscreen extends StatefulWidget {
  const Splashscreen ({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>const Loginscreen())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imageUrl: "logo.png"),
            const SizedBox(height: 20,),
            UiHelper.customImage(imageUrl: "Instagram.png")
          ],
        ),
      )
    );
  }
}
