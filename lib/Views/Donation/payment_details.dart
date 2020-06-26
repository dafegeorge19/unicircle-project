import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/components/rounded_button.dart';

class PaymentDetails extends StatefulWidget {
  @override
  _PaymentDetailsState createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: RoundedButton(
              color: Theme.of(context).primaryColor,
              textColor: Colors.white,
              text: "Donate",
              press: () {},
            )),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                alignment: Alignment.topCenter,
                height: 250,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Theme.of(context).primaryColor,
                          Theme.of(context).primaryColorDark
                        ]),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sendIcon(),
                    SizedBox(height: 8),
                    Text('Fund A Project',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700))
                  ],
                )),
            SizedBox(height: 40),
            infoBox(),
            SizedBox(height: 40),
          ],
        )));
  }

  Widget sendIcon() {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.white.withOpacity(.8)),
        child: Center(
            child: Icon(FontAwesome.handshake_o,
                color: Theme.of(context).primaryColor, size: 45)));
  }

  Widget textField(String labelText, Widget prefixIcon) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.85,
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Center(
            child: TextField(
                keyboardType: (labelText == 'Amount')
                    ? TextInputType.number
                    : TextInputType.text,
                cursorColor: Theme.of(context).primaryColor,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    labelText: labelText,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    /*
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Theme.of(context).primaryColor),
                    ),
                    */
                    labelStyle:
                        TextStyle(color: Theme.of(context).primaryColor),
                    prefixIcon: prefixIcon))));
  }

  Widget infoBox() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0, // soften the shadow
                spreadRadius: 0.5, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.0, // Move to bottom 10 Vertically
                ),
              )
            ]),
        width: MediaQuery.of(context).size.width * 0.90,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          RichText(
            text: TextSpan(
                text: 'Funding Amount:',
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                children: <TextSpan>[
                  TextSpan(
                    text: '     \$52',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontFamily: 'Poppins'),
                  )
                ]),
          ),
          SizedBox(height: 30),
          RichText(
            text: TextSpan(
                text: 'Available Balance:',
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                children: <TextSpan>[
                  TextSpan(
                    text: '     \$2000',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                        fontFamily: 'Poppins'),
                  )
                ]),
          ),
          SizedBox(height: 30),
          RichText(
            text: TextSpan(
                text: 'Project Type:',
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                children: <TextSpan>[
                  TextSpan(
                    text: '     Agriculture',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Poppins'),
                  )
                ]),
          ),
          SizedBox(height: 30),
          RichText(
            text: TextSpan(
                text: 'Weeks Left:',
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins'),
                children: <TextSpan>[
                  TextSpan(
                    text: '     51',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Poppins'),
                  )
                ]),
          ),
        ]));
  }
}
