import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  static const routeName = '/profile';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double sizedheight = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 5),
              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.grey,
              ),
              Text(
                'Marcus Loo',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 10),
              Text('Malaysian, 24, Male'),
              SizedBox(height: 10),
              Text('Description'),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 2,
              ),
              SizedBox(height: 10),
              Text('Marcus@gmail.com'),
              SizedBox(height: 5),
              Text('012-3456789'),
              SizedBox(height: 10),
              Divider(
                indent: 20,
                endIndent: 20,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.school),
                          title: Text('Educational Background'),
                        ),
                        Divider(
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        SizedBox(height: sizedheight),
                        Text('Highest Education Level:'),
                        Text(
                          'Undergraduate (Bachelor Degree or equivalent)',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        SizedBox(height: sizedheight),
                        Text('Graduated:'),
                        Text(
                          '2011',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        SizedBox(height: sizedheight),
                        Text('Educational Institution:'),
                        Text(
                          'Multimedia University MMU',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        SizedBox(height: sizedheight),
                        Text('Field of Study:'),
                        Text(
                          'Computer Science',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        SizedBox(height: sizedheight),
                        Text('Major:'),
                        Text(
                          'Software Engineering',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        SizedBox(height: sizedheight),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.domain),
                          title: Text('Current Company'),
                        ),
                        Divider(
                          indent: 5,
                          endIndent: 5,
                          thickness: 2,
                        ),
                        SizedBox(height: sizedheight),
                        Text(
                          'WOBB',
                          style:
                              TextStyle(color: Theme.of(context).accentColor),
                        ),
                        SizedBox(height: sizedheight),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(Icons.video_call),
                    title: Text('My Video Cover Letter'),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        'VIEW',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.green[700],
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  elevation: 2,
                  child: ListTile(
                    leading: Icon(Icons.insert_drive_file),
                    title: Text('My CV'),
                    trailing: RaisedButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        'VIEW',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      color: Colors.green[700],
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
