import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  double left = 10;
  double top = 0;
  double bottom = 0;
  double right = 10;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 20),
                Icon(
                  Icons.account_circle,
                  color: Colors.grey,
                  size: 100,
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Hi, Marcus',
                      style: TextStyle(),
                    ),
                    Divider(),
                    Text('marcus@gmail.com')
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('My Profile', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.video_call),
              title: Text('My Video Cover Letter', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.insert_drive_file),
              title: Text('My CV', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.timelapse),
              title:
                  Text('Job Application History', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.people),
              title: Text('My Interviews', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          Divider(
            indent: 20,
            endIndent: 20,
            thickness: 2,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(left, top, right, bottom),
            child: ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('WOBB App Tutorial', textAlign: TextAlign.start),
              onTap: () {},
            ),
          ),
          SizedBox(height: 20),
          Text('Got feedback? Tell us at hello@wobbjobs.com'),
          SizedBox(height: 20),
          Text('App Version: 2.2.0'),
          SizedBox(height: 5),
          Text('Build Number: 42200'),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
