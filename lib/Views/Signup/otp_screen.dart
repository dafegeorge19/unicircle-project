import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:unicircle/Views/Welcome/components/background.dart';
import 'package:unicircle/components/rounded_button.dart';

class VerificationScreen extends StatefulWidget {
  final String number;

  const VerificationScreen({Key key, this.number}) : super(key: key);
  @override
  _VerificationScreenState createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  String pinCode;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var absHeight = MediaQuery.of(context).size.height;
    var absWidth = MediaQuery.of(context).size.width;
    return Background(
      child: SingleChildScrollView(
          child: Column(children: [
        Container(
          height: absHeight * 0.20,
          width: absWidth,
        ),
        Container(
          alignment: Alignment.topCenter,
          height: absHeight * 0.80,
          width: absWidth,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/onboarding0.png', height: 150),
              Text(
                "OTP Verification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(height: size.height * 0.05),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
                child: Text(
                    'Please enter the 4 digit pin sent to ${widget.number}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    )),
              ),
              Padding(
                padding: EdgeInsets.all(0.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    //margin: EdgeInsets.only(top: 10.0),
                    child: PinEntryTextField(
                      //showFieldAsBox: true,
                      fieldWidth: 30.0,
                      fields: 4,
                      onSubmit: (String pin) {
                        setState(() {
                          pinCode = pin;
                        }); //end showDialog()
                      }, // end onSubmit
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.05),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Didn\'t recieve any code?',
                          style: TextStyle(
                              color: Colors.black, fontFamily: 'Poppins'),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Resend',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).primaryColor,
                                    fontFamily: 'Poppins'),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {})
                          ]),
                    ),
                  )),
              SizedBox(height: size.height * 0.05),
              RoundedButton(
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                text: "Verifiy",
                press: () {},
              ),
            ],
          ),
        )
      ])),
    );
  }
}
