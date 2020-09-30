import 'package:flutter/material.dart';

// screens
import './screens/tabs_screen.dart';
import './screens/profile_screen.dart';

// widgets
import './models/company.dart';

// dummy data
import './dummy_data.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Company> _availableCompany = DUMMY_COMPANIES;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WOBB',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
        
      ),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => TabScreen(_availableCompany),
        ProfileScreen.routeName: (ctx) => ProfileScreen(),
      },
    );
  }
}