import 'dart:async';
import 'package:flutter/material.dart';
import 'package:unicircle/Views/Onboarding/onboarding.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  _navigate() {
    return Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => Onboarding()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  void initState() {
    super.initState();
    _buildDisplay();
  }

  @override
  void dispose() {
    super.dispose();
    _buildDisplay();
  }

  _buildDisplay() {
    Timer(Duration(seconds: 5), _navigate);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/man_bg.jpeg'),
                fit: BoxFit.cover)),
      ),
      Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: Color(0xFFC726AC).withOpacity(.6)),
          child: Center(
              child: Image.asset('assets/images/white_logo.png', height: 170)))
    ]);
  }
}
