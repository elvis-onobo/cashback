import 'dart:async';
import 'package:flutter/material.dart';
import 'carousel.dart';
import 'auth/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => const Carousel()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        // name the app Rush or Cashback
        child: Text('Cashback', style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
    );
  }
}
