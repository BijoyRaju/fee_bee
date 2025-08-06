import 'dart:async';
import 'package:fee_bee/view/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
     Timer(Duration(seconds: 4), () {
          // TODO: implement initState
          Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavBar()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TODO: implement Splash Screen Body
          ],
        ),
      )
    );
  }
}