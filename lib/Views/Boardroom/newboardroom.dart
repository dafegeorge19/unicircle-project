import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:unicircle/Views/chat_landing.dart';
import 'package:unicircle/bottom_bar.dart';
import 'package:unicircle/boardroom_page.dart';

class NewboardRoom extends StatefulWidget {
  @override
  _NewboardRoomState createState() => _NewboardRoomState();
}

class _NewboardRoomState extends State<NewboardRoom>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Boardroom',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
          centerTitle: true,
          actions: [
            chatIcon(),
            IconButton(icon: Icon(Icons.person), onPressed: () {}),
          ]),
      body: Stack(children: [
        Positioned(
          top: 60,
          left: 20,
          right: 20,
          bottom: 0,
          child: Container(
            child: Column(
              children: [
                Container(
                  child: header(),
                ),
                Container(
                  child: cards(),
                ),
                Container(
                  child: ongoing_project(),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  Widget header() {
    return Row(
      children: [
        RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Good morning, ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            TextSpan(
              text: "Blair",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ]),
        ),
        Spacer(),
        Icon(
          Icons.search,
          size: 17,
          color: Colors.grey[500],
        )
      ],
    );
  }

  Widget cards() {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
              color: Color(0xff6280FF),
              borderRadius: BorderRadius.circular(10)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Earnings",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 17),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesome.dollar,
                    color: Colors.white,
                  ),
                  Text(
                    "8,350",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFBA68C8),
                    borderRadius: BorderRadius.circular(50)),
                child: Text(
                  "+10% since last month",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Column(
          children: [
            Container(
              width: 180,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFBA68C8)),
                    child: Center(
                      child: Text(
                        "98",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pitch Rank",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "In top 30%",
                        style: TextStyle(
                            fontSize: 13, color: Colors.blueGrey[500]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  color: Color(0xffF3F6FD),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    child: Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFBA68C8)),
                          child: Center(
                            child: Text(
                              "32",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 18),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Projects",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "8 Investors",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.blueGrey[500]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Argriculture",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.blueGrey[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "Forex",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget ongoing_project() {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            child: Row(
              children: [
                Text(
                  "Top Pitches",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                ),
                Spacer(),
                Text(
                  "See All",
                  style: TextStyle(color: Color(0xFFBA68C8)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Color(0xffE0E5F1)),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      child: Image(
                        height: 60,
                        width: 60,
                        image: AssetImage(
                          "assets/images/Bg.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Blair",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Posted yesterday",
                          style: TextStyle(
                            color: Colors.blueGrey[200],
                            height: 2,
                          ),
                        )
                      ],
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Color(0xff13C6C2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "Agriculture",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "Building a large scale farm in the country.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: 70,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F6FD),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(
                            FontAwesome.dollar,
                            color: Colors.blueGrey[100],
                          ),
                          Text(
                            "4,500",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          Text(
                            "/month",
                            style: TextStyle(height: 2),
                          )
                        ],
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            color: Color(0xff375BE9),
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          "View Pitch",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 80,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xff6280FF),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Container(
                  child: Icon(
                    AntDesign.slack,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Engage with clients",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Upload a pitch",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xFFE1BEE7),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "Join now",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  chatIcon() {}
}
