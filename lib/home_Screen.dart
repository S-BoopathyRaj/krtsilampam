import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:krtsilampam/Histroy/histroy.dart';

 // Import the file where your History screen is defined

class home_Screen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<home_Screen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Explore Page'),
    Text('People Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KRD'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/KRD.jpg', // Replace with your logo's path
              width: 50, // Adjust width as needed
              height: 50, // Adjust height as needed
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('Spouses'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryPage()),
                );
              },
            ),
            ListTile(
              title: Text('Team'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('Version 1.0.1'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('Account Details'),
              onTap: () {
                // Handle item tap
              },
            ),
            ListTile(
              title: Text('Log Out'),
              onTap: () {
                // Handle item tap
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
