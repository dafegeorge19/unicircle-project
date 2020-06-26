import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/Views/Login/login_screen2.dart';
import 'package:unicircle/Views/Signup/otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
                SizedBox(height: 50),
                Image.asset('assets/images/white_logo.png', height: 130),
                SizedBox(height: 40),
                textField(
                    'Email',
                    Icon(Icons.mail_outline, color: Colors.white),
                    SizedBox(),
                    emailController),
                textField('Username', Icon(Icons.person, color: Colors.white),
                    SizedBox(), emailController),
                textField(
                    'Phone number',
                    Icon(Icons.phone, color: Colors.white),
                    SizedBox(),
                    phoneController),
                //SizedBox(height: 30),
                textField(
                    'Password',
                    Icon(Icons.lock_outline, color: Colors.white),
                    SizedBox(),
                    passwordController),
                SizedBox(height: 40),
                outlineBtn(),
                SizedBox(height: 40),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: RichText(
                        text: TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(
                                color: Colors.white70, fontFamily: 'Poppins'),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Sign in',
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
                                            return LoginScreen();
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
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Center(
            child: TextField(
                cursorColor: Colors.white,
                style: TextStyle(color: Colors.white),
                obscureText: (labelText == 'Password') ? isObscure : false,
                controller: controller,
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
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  VerificationScreen(number: phoneController.text)));
        },
        child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.white, width: 2)),
            child: Center(
                child: Text('NEXT',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)))));
  }
}
