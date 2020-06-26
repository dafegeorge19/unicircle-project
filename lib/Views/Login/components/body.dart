import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/Views/Homepage/home.dart';
import 'package:unicircle/Views/Login/components/background.dart';
import 'package:unicircle/Views/Signup/signup_screen.dart';
import 'package:unicircle/Views/dashboard.dart';
import 'package:unicircle/Views/medicine.dart';
import 'package:unicircle/components/already_have_an_account_acheck.dart';
import 'package:unicircle/components/rounded_button.dart';
import 'package:unicircle/components/rounded_input_field.dart';
import 'package:unicircle/components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';
import 'package:unicircle/config/styles.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.20,
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            SizedBox(height: size.height * 0.02),
            Container(
                width: 200,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon:
                            Icon(Icons.mic, color: Styles.mainPurple, size: 40),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(MaterialCommunityIcons.fingerprint,
                            color: Styles.mainPurple, size: 40),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(MaterialCommunityIcons.face_recognition,
                            color: Styles.mainPurple, size: 40),
                        onPressed: () {})
                  ],
                )),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
