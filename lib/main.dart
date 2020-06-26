import 'package:flutter/material.dart';
//import 'package:unicircle/Views/Onboarding/onboarding.dart';
import 'package:unicircle/Views/splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyUnicircle',
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          accentColor: Colors.blue,
          canvasColor: Colors.grey[200],
          primaryColor: Color(0xFFEC0C6D),
          primaryColorDark: Color(0xFFC726AC),
          primarySwatch: Colors.purple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: 'Poppins'),
      home: SplashScreen(),
    );
  }
}
