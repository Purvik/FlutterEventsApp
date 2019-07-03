import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_events_week3/HomeScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadTimer();
  }

  Future<Timer> loadTimer() async {
    return Timer(Duration(seconds: 5), navigate);
  }

  navigate() {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
//      body: Container(
//        child: Center(
//            child: Padding(
//              padding: const EdgeInsets.all(24.0),
//              child: Image.network('https://itsallwidgets.com/images/logo.png'),
//            )
//        ),
//      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(24),
        child: Image.network('https://itsallwidgets.com/images/logo.png'),
      ),
    );
  }
}
