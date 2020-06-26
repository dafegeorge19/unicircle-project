import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/Views/Boardroom/newboardroom.dart';
import 'package:unicircle/Views/Donation/landing.dart';
import 'package:unicircle/Views/Project_fund/pages/intro_page.dart';
import 'package:unicircle/Views/Settings/settings.dart';
import 'package:unicircle/Views/The_Bag/landing.dart';
import 'package:unicircle/Views/chat_landing.dart';
import 'package:unicircle/Views/medicine.dart';
import 'package:unicircle/boardroom.dart';
import 'package:unicircle/config/palette.dart';
import 'package:unicircle/config/styles.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _scaffoldKey = GlobalKey<ScaffoldState>();
  _notifier(String serverRes) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(serverRes)));
  }

  @override
  Widget build(BuildContext context) {
    var absHeight = MediaQuery.of(context).size.height;
    //var absWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        key: _scaffoldKey,
        drawer: Drawer(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: absHeight,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).primaryColor,
                  Theme.of(context).primaryColorDark
                ], stops: [
                  0.1,
                  0.7
                ]),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ListView(children: [
                      ListTile(
                          leading: Stack(children: [
                            ClipOval(
                              child: Image.asset('assets/images/sophia.jpg',
                                  height: 60),
                            ),
                            Positioned(top: 2, right: 1, child: indicator2())
                          ]),
                          title: Text('Blair Dota',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          subtitle: Text('online',
                              style: TextStyle(color: Colors.white))),
                      ListTile(
                          leading: Icon(Icons.home, color: Colors.white),
                          title: Text('Home',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      ListTile(
                          leading: Icon(Ionicons.ios_chatbubbles,
                              color: Colors.white),
                          title: Text('Chat',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      ListTile(
                          leading: Icon(Icons.person, color: Colors.white),
                          title: Text('Profile',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      ListTile(
                          leading: Icon(Entypo.wallet, color: Colors.white),
                          title: Text('Wallet',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      ListTile(
                          leading: Icon(FontAwesome.money, color: Colors.white),
                          title: Text('52 weeks donation',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                      ListTile(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Settings()));
                          },
                          leading: Icon(Icons.settings, color: Colors.white),
                          title: Text('Settings',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400))),
                    ]),
                  ),
                  ListTile(
                      leading: Icon(MaterialCommunityIcons.logout,
                          color: Colors.white),
                      title: Text('Logout',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400))),
                ],
              )),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 1,
            titleSpacing: 0,
            leading: IconButton(
                icon: Icon(Icons.sort),
                onPressed: () {
                  _scaffoldKey.currentState.openDrawer();
                }),
            title: smallImage(),
            actions: [
              chatIcon(),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
            ]),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 25),
                      userImage(),
                      SizedBox(height: 15),
                      Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('Welcome Blair Dota',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20)),
                              Text('Online',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context).primaryColor))
                            ],
                          )),
                      SizedBox(height: 20),
                      GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => TheBagComponent()));
                          },
                          child: balanceCard()),
                      SizedBox(height: 20),
                      gridView(),
                      SizedBox(height: 20),
                    ]))));
  }

  //The gridView container all the menu items. Colors, icons, and texts are added by passing them as arguments to the itemBox widget
  Widget gridView() {
    return Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        child: GridView.count(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ChatLanding()));
                  },
                  child:
                      itemBox('Chats', Ionicons.ios_chatbubbles, Colors.blue)),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => NewboardRoom()));
                  },
                  child: itemBox('Boardroom',
                      MaterialCommunityIcons.google_classroom, Colors.orange)),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DonationLanding()));
                  },
                  child: itemBox('52 Weeks', FontAwesome.money, Colors.green)),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => TheBagComponent()));
                  },
                  child: itemBox('The Bag', Icons.group, Colors.indigo)),
              GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => IntroPage()));
                  },
                  child: itemBox(
                      'Telemedicine', AntDesign.medicinebox, Colors.pink)),
              GestureDetector(
                  onTap: () {
                    _notifier('Coming soon');
                  },
                  child: itemBox('Project Fund', MaterialIcons.attach_money,
                      Colors.purple))
            ]));
  }

//A container widget that return the items in the gridview
  Widget itemBox(String title, IconData icon, Color color) {
    return Container(
        height: 150,
        width: 140,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 0.5, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.5, // Move to bottom 10 Vertically
                ),
              )
            ]),
        child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          (title == 'Chats')
              ? chatIcon2()
              : Icon(icon, color: Colors.white, size: 30),
          SizedBox(height: 10),
          Text(title,
              style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w600))
        ])));
  }

  Widget userImage() {
    return Stack(children: [
      CircleAvatar(
        radius: 55,
        backgroundColor: Theme.of(context).primaryColor,
        child: CircleAvatar(
          radius: 50,
          backgroundImage: AssetImage('assets/images/sophia.jpg'),
        ),
      ),
    ]);
  }

  Widget smallImage() {
    return ListTile(
        leading: Stack(children: [
          ClipOval(
            child: Image.asset('assets/images/sophia.jpg', height: 40),
          ),
          Positioned(top: 2, right: 1, child: indicator2())
        ]),
        title:
            Text('Blair Dota', style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text('online',
            style: TextStyle(color: Theme.of(context).primaryColor)));
  }

  Widget indicator2() {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border.all(color: Colors.white, width: 1),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  Widget chatIcon() {
    return Stack(children: [
      IconButton(
          icon: Icon(Ionicons.ios_chatbubbles),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => ChatLanding()));
          }),
      Positioned(top: 10, right: 1, child: indicator('5'))
    ]);
  }

  Widget chatIcon2() {
    return Stack(children: [
      Icon(Ionicons.ios_chatbubbles, color: Colors.white, size: 30),
      Positioned(top: 0, right: 1, child: indicator('5'))
    ]);
  }

  Widget indicator(String message) {
    return Container(
        height: 14,
        width: 14,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
            child: Text(message,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w500))));
  }

  Widget searchBox() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
        height: 45,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Colors.grey[200]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
              child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Search Investments'))),
          Icon(Icons.search, color: Colors.purple)
        ]));
  }

  Widget balanceCard() {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        height: 160,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).primaryColorDark
            ], stops: [
              0.1,
              0.7
            ]),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 0.5, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.0, // Move to bottom 10 Vertically
                ),
              )
            ]),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Your balance is', style: TextStyle(color: Colors.white)),
                Text('\$2000',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30)),
                Text('',
                    style: TextStyle(
                      color: Colors.white.withOpacity(.6),
                      fontSize: 12,
                    )),
              ]),
          Icon(Icons.credit_card, color: Colors.white.withOpacity(.5), size: 80)
        ]));
  }
}
