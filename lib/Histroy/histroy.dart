import 'package:flutter/material.dart';
import 'package:krtsilampam/Histroy/nextpage.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  int _selectedIndex = 0;

  // List of widgets for different pages
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'History of KRD',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '2022 ஆம் ஆண்டு தமிழ்ப் புத்தாண்டில் 22 வயது இளைஞரால் துவங்கப்பட்ட தமிழ்மண்ணின் பாரம்பரியக் கலைக் குழுவாக STEELCITY MARTIAL ART\'S of SILAMBAM என்ற பெயரில் சிறியதொரு அளவில் தன்நம்பிக்கையுடன் துவங்கப்பட்டது.\n\n'
              'பின் ஒரு சில மாதங்களில் K.R.D என்ற மூத்தோர்களின் பெயரை ஆசியாக கொண்டு அடுத்த ஒண்கட்ட நிலைக்கு காலடி தடம் படைக்க முயற்சிகள்.\n\n'
              'கையான ஆயத்தமாக்கபட்டது ம்போ ALCOHOTO 3 சேளம் மாவட்ட சிலம்ப நட்சத்திர வீரம், தலைசிறந்த ஆசாம் ஆனதிரு. நடராஸ்.கே. அவர்களின் மூத்த மாணவன் என்ற பெரும்ப 10. தண்நம்பிக்கையுயன் திரு. சீனிவாசன் அவர்கள் சிளம்ப கலை (பயிற்சியின் தலைமை பயிற்சியாளராக விட் ஒப்போ கொண்டார்.',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 19,
                fontFamily: 'Tamil',
                fontWeight: FontWeight.w400, // Adjust weight for formal look
                height: 1.5, // Line height for better readability
              ),
            ),
          ),
        ],
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
        title: Text('History Of KRD'),
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
                Navigator.pop(context); // Close the drawer
                setState(() {
                  _selectedIndex = 0; // Switch to the History tab
                });
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
