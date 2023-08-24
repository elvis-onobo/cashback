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
            MaterialPageRoute(builder: (BuildContext context) => Carousel()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          // name the app Rush or Cashback
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Cashback', style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              )),
              SizedBox(height: 10),  // Add spacing between the two Text widgets
              Text('Reward for Spending', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
