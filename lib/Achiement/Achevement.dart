import 'package:flutter/material.dart';
import 'package:krtsilampam/Histroy/histroy.dart';
import 'package:krtsilampam/Histroy/nextpage.dart';
import 'package:krtsilampam/main.dart';

class Achevement extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<Achevement> {
  int _selectedIndex = 0;

  // List of widgets for different pages
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Achievement of KRD',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16), // Adds space between the title and the content
            Text(
              '2023 ஆம் ஆண்டு பள்ளி கல்வி கறையின் சர்பாக நடைபெற்ற '
              '*கனிஷ்கா மித்ரா 2.முருகன் பதக்கத்தை '
              '2002 ஆம் பட சிலம்பாட்ட மாணவி '
              'செல்க '
              '* 2028 ஆம் '
              'SILAMBAM '
              'பதக்கம், '
              '18 '
              'P: பதக்கத்தையும் '
              'திதி: நவமி '
              'CLUBG '
              'து '
              'போட்டியில் '
              'மாணவி '
              'அவர்கள் வெள்ளி '
              'தன்வசபடுத்தினார் '
              'ஆண்டு சேலம் மாவட்ட போட்டியில் மருத்துவ சிறையில் பயிலும் வர்ஷா% '
              'தாமரை செல்வி அவர்கள் வெள்ளி படிகத்தை தன்படுத்தினார் '
              'ஆண்டு ஏற்காட்டில் நடைபெற்ற CHAMPION போட்டியில் 34 உங்6 '
              'வெள்ளி பதக்கம் 3 7 வெண்கள் வெண்றார்கள் '
              'ind '
              '2005 ஆம் ஆண்டு நடைபெற்ற INTRA போட்டியில் 1 முதலிடம், 6 இரண்டாம் '
              'இடம், 2 மூன்றாம் இடமும் வென்றார்கள் '
              'மம் · உக்கிரம் ஹஸ்ம்',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Tamil',
                fontWeight: FontWeight.w400, // Adjust weight for formal look
                height: 1.5, // Line height for better readability
              ),
            ),
          ],
        ),
      ),
    ),
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
        title: Text('Achievement Of KRD'),
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
              title: Text('Achievement'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Achevement()),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0), // Adjust top padding here
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextpage()),
          );
        },
        backgroundColor: Colors.black,
        child: Text(
          'Next',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
