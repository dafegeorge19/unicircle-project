import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/Views/Homepage/home.dart';
import 'package:unicircle/Views/Signup/signup_screen2.dart';
import 'package:unicircle/Views/Welcome/facial_login.dart';
import 'package:unicircle/Views/Welcome/fingerprint_login.dart';
import 'package:unicircle/Views/Welcome/voice_recognition.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
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
              decoration:
                  BoxDecoration(color: Color(0xFFC726AC).withOpacity(.6)),
              child: SingleChildScrollView(
                  child: Column(children: [
                SizedBox(height: 70),
                Image.asset('assets/images/white_logo.png', height: 130),
                SizedBox(height: 40),
                textField(
                    'Email',
                    Icon(Icons.mail_outline, color: Colors.white),
                    SizedBox(),
                    emailController),
                textField(
                    'Password',
                    Icon(Icons.lock_outline, color: Colors.white),
                    SizedBox(),
                    passwordController),
                SizedBox(height: 40),
                outlineBtn(),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    width: 170,
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon:
                                Icon(Icons.mic, color: Colors.white, size: 30),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => VoiceRecognition()));
                            }),
                        IconButton(
                            icon: Icon(MaterialCommunityIcons.fingerprint,
                                color: Colors.white, size: 30),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FingerPrintLogin()));
                            }),
                        IconButton(
                            icon: Icon(MaterialCommunityIcons.face_recognition,
                                color: Colors.white, size: 30),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => FacialLogin()));
                            })
                      ],
                    )),
                SizedBox(height: 40),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Not yet registered?',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: 'Poppins'),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign Up',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontFamily: 'Poppins'),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return SignUpScreen();
                                          },
                                        ),
                                      );
                                    })
                            ]),
                      ),
                    ))
              ]))),
        ]));
  }

  Widget textField(String labelText, Widget prefixIcon, Widget suffixIcon,
      TextEditingController controller) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.85,
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
            child: TextField(
                obscureText: (labelText == 'Password') ? isObscure : false,
                controller: controller,
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: labelText,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    suffixIcon: suffixIcon,
                    prefixIcon: prefixIcon))));
  }

  Widget outlineBtn() {
    return GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()));
        },
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('LOGIN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)))));
  }
}
