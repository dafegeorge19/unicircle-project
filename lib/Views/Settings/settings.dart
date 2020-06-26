import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Theme.of(context).primaryColor,
            elevation: 1,
            titleSpacing: 1,
            centerTitle: true,
            title: Text('Settings',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w600)),
            actions: [
              IconButton(icon: Icon(Icons.edit), onPressed: () {}),
            ]),
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: ListTile(
                leading: photoWrap(),
                title: Text('Jameson Dunn',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
                subtitle: Text('jameson@gmail.com',
                    style: TextStyle(
                        //fontWeight:FontWeight.w600,
                        fontSize: 14)),
              ),
            ),
            Divider(),
            SizedBox(height: 20),
            ListTile(
                leading: leadIcon(Icons.edit),
                title: Text('Edit Profile'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,
                        size: 18, color: Colors.black),
                    onPressed: () {})),
            SizedBox(height: 20),
            ListTile(
                leading: leadIcon(Icons.credit_card),
                title: Text('My Cards'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,
                        size: 18, color: Colors.black),
                    onPressed: () {})),
            SizedBox(height: 20),
            ListTile(
                leading: leadIcon(Icons.notifications),
                title: Text('Notifications'),
                trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios,
                        size: 18, color: Colors.black),
                    onPressed: () {})),
            SizedBox(height: 20),
            ListTile(
                leading: leadIcon(Icons.notifications),
                title: Text('Logout'),
                trailing: IconButton(
                    icon: Icon(MaterialCommunityIcons.logout,
                        size: 18, color: Colors.black),
                    onPressed: () {}))
          ],
        )));
  }

  Widget smallImage() {
    return ListTile(
        leading: Stack(children: [
          ClipOval(
            child: Image.asset('assets/images/sophia.jpg', height: 40),
          ),
          Positioned(top: 2, right: 1, child: indicator2())
        ]),
        title: Text('Blair Dota',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        subtitle: Text('online', style: TextStyle(color: Colors.white)));
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

  Widget photoWrap() {
    return ClipOval(
      child: Image.asset('assets/images/sophia.jpg', height: 60),
    );
  }

  Widget leadIcon(IconData icon) {
    return Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Theme.of(context).accentColor),
        child: Center(child: Icon(icon, color: Colors.white)));
  }
}
