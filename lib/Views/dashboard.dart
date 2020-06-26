import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/Views/chat_landing.dart';
import 'package:unicircle/Views/screens.dart';
import 'package:unicircle/boardroom.dart';

class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(shrinkWrap: true, children: [
            SizedBox(height: 20),
            ListTile(
                leading: leadingImage('assets/images/sophia.jpg', Colors.green),
                title: Text('Blair Dota',
                    style: TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black)),
                subtitle: Text('online',
                    style: TextStyle(
                        //fontWeight:FontWeight.w700,
                        fontSize: 12,
                        color: Colors.purple)))
          ]),
        ),
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(80.0),
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: Colors.white,
                titleSpacing: 0,
                elevation: 0.5,
                automaticallyImplyLeading: true,
                title: Row(children: [
                  leadingImage('assets/images/sophia.jpg', Colors.green),
                  SizedBox(width: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Blair Dota',
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      SizedBox(height: 5),
                      Text('online',
                          style: TextStyle(
                              //fontWeight:FontWeight.w700,
                              fontSize: 12,
                              color: Colors.purple))
                    ],
                  )
                ]),
                actions: [
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ],
              ),
            )),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(height: 30),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                photoWrap(),
              ]),
          SizedBox(height: 20),
          Container(
              child: Column(children: [
            Text('Welcome Blair Dota',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 10),
            Text('Online',
                style: TextStyle(
                    // fontSize:22,
                    color: Colors.purple))
          ])),
          SizedBox(height: 20),
          walletCard(),
          SizedBox(height: 20),
          imageRow(),
          SizedBox(height: 20),
          gridWrapper(),
          SizedBox(height: 20),
        ])));
  }

  Widget leadingImage(String image, Color color) {
    return Stack(children: [
      ClipOval(
        child: Image.asset(image, height: 50),
      ),
      onlineIndicator(color)
    ]);
  }

  Widget onlineIndicator(Color color) {
    return Container(
        height: 18,
        width: 18,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            color: color,
            borderRadius: BorderRadius.circular(25)));
  }

  Widget photoWrap() {
    return CircleAvatar(
      radius: 55,
      backgroundColor: Colors.purple,
      child: CircleAvatar(
        radius: 50,
        backgroundImage: AssetImage('assets/images/sophia.jpg'),
      ),
    );
  }

  Widget walletCard() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        alignment: Alignment.center,
        height: 135,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.purple, Colors.purple[800]])),
        width: MediaQuery.of(context).size.width * 0.90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Available Cash',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                Text('\$2345.53',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                Text('Use this for donation',
                    style: TextStyle(
                      color: Colors.white,
                    ))
              ],
            ),
            Icon(Icons.credit_card,
                color: Colors.white.withOpacity(.5), size: 70)
          ],
        ));
  }

  Widget imageRow() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leadingImage('assets/images/sophia.jpg', Colors.green),
            leadingImage('assets/images/sophia.jpg', Colors.green),
            leadingImage('assets/images/sophia.jpg', Colors.green),
            leadingImage('assets/images/sophia.jpg', Colors.green),
            leadingImage('assets/images/sophia.jpg', Colors.green)
          ],
        ));
  }

  Widget gridWrapper() {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Center(
            child: GridView.count(
          physics: ScrollPhysics(),
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          crossAxisCount: 2,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => ChatLanding()));
                },
                child: gridCard(Icons.chat, 'Chat', Colors.blue[700])),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => BoardRoom()));
                },
                child: gridCard(Icons.group, 'Boardroom', Colors.blueAccent)),
            gridCard(FontAwesome5.calendar_times, '52 Weeks', Colors.green),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => TeleMedicine()));
                },
                child: gridCard(
                    AntDesign.medicinebox, 'Telemedicine', Colors.orange)),
            gridCard(
                MaterialCommunityIcons.cash_refund, 'Project Fund', Colors.red),
            gridCard(Entypo.shopping_bag, 'The Bag', Colors.purple)
          ],
        )));
  }

  Widget gridCard(IconData icon, String title, Color color) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 5.0, // soften the shadow
          spreadRadius: 0.5, //extend the shadow
          offset: Offset(
            0.0, // Move to right 10  horizontally
            0.0, // Move to bottom 10 Vertically
          ),
        )
      ], color: color, borderRadius: BorderRadius.circular(5)),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40, color: Colors.white),
          SizedBox(height: 15),
          Text(title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700))
        ],
      )),
    );
  }
}
