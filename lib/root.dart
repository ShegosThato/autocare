import 'package:flutter/material.dart';
import 'package:autocare/screens/home.dart';
import 'package:autocare/screens/search.dart';
import 'package:autocare/screens/new_inspect.dart';
import 'package:autocare/screens/profile.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  _RootScreenState createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentTabIndex = 0;

  //PAGES
  final _kTabPages = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const InspectScreen(),
    const ProfileScreen(),
  ];

  _buildBottomNavBar() {
    //NAV ITEMS
    final _kBottomNavbarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      const BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Inspections'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.person), label: 'Profile'),
    ];
    //assert(_kTabPages.length == _kBottomNavbarItems);
    return BottomNavigationBar(
      items: _kBottomNavbarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _kTabPages[_currentTabIndex],
      /**
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Add new a inspection',
        onPressed: () {},
      ),
       */
      drawer: Drawer(
        child: drawerItems,
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  final drawerItems = ListView(
    children: <Widget>[
      DrawerHeader(
        child: Text('Header'),
        decoration: BoxDecoration(color: Colors.amber[50]),
      ),
      ListTile(
        title: Text('item 1'),
      ),
      ListTile(
        title: Text('item 2'),
      ),
    ],
  );
}
