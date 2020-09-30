import 'package:flutter/material.dart';

// screens
import '../screens/chat_screen.dart';
import '../screens/company_screen.dart';
import '../screens/job_card_screen.dart';
import '../screens/account_screen.dart';
import '../screens/save_screen.dart';

// widgets
import '../models/company.dart';

class TabScreen extends StatefulWidget {
  final List<Company> availableCompanies;

  TabScreen(this.availableCompanies);

  @override
  _TabScreenState createState() => _TabScreenState(availableCompanies);
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;
  List<Company> displayCompanies;

  _TabScreenState(this.displayCompanies);

  @override
  void initState() {
    _pages = [
      {
        'page': JobCardScreen(),
        'title': 'WOBB',
      },
      {
        'page': CompanyScreen(displayCompanies),
        'title': 'WOBB',
      },
      {
        'page': ChatScreen(),
        'title': '',
      },
      {
        'page': SaveScreen(),
        'title': '',
      },
      {
        'page': AccountScreen(),
        'title': 'My Account',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  AppBar _searchAppBar() {
    return new AppBar(
      //centerTitle: true,
      title: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.red,
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            'Search',
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.left,
          ),
        ),
      ),
      backgroundColor: Colors.red,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.search,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _checkPage(int index) {
    switch (index) {
      case 0:
        {
          return AppBar(
            title: Text(_pages[_selectedPageIndex]['title']),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {},
              )
            ],
          );
        }
        break;
      case 1:
        {
          return AppBar(
            title: Text(_pages[_selectedPageIndex]['title']),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {},
              )
            ],
          );
        }
        break;
      case 2:
        {
          return _searchAppBar();
        }
        break;
      case 3:
        {
          return _searchAppBar();
        }
        break;
      case 4:
        {
          return AppBar(
            title: Text(_pages[_selectedPageIndex]['title']),
          );
        }
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: (_selectedPageIndex == 0 || _selectedPageIndex == 1)
      //     ? AppBar(
      //         title: Text(_pages[_selectedPageIndex]['title']),
      //         actions: <Widget>[
      //           IconButton(
      //             icon: Icon(Icons.filter_list),
      //             onPressed: () {},
      //           )
      //         ],
      //       )
      //     : (_selectedPageIndex == 4)
      //         ? AppBar(
      //             title: Text(_pages[_selectedPageIndex]['title']),
      //           )
      //         : AppBar(
      //             title: Text(_pages[_selectedPageIndex]['title']),
      //             actions: <Widget>[
      //               IconButton(
      //                 icon: Icon(Icons.search),
      //                 onPressed: () {},
      //               )
      //             ],
      //           ),
      appBar: _checkPage(_selectedPageIndex),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColor,
        currentIndex: _selectedPageIndex,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            title: Text('Jobs'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.domain),
            title: Text('Companies'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Saved'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Account'),
          ),
        ],
      ),
    );
  }
}
