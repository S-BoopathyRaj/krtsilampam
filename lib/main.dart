import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:krtsilampam/home_Screen.dart'; // Import the HomeScreen widget
import 'SignUpPage.dart'; // Import the SignUpPage widget

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "KRT",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isHovering = false;
  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Foreground UI
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 150.0), // Move the content further down
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0), // Add border radius here
                        ),
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  SizedBox(height: 20), // Increased space between Username and Password fields
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12.0), // Add border radius here
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          // Handle login action
                          final username = _usernameController.text;
                          final password = _passwordController.text;
                          print('Username: $username, Password: $password');

                          // Navigate to HomeScreen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => home_Screen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.blue, // Text color
                        ),
                        child: Text('Login'),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Reduced space between the login button and forgot password button
                  TextButton(
                    onPressed: () {
                      // Handle forgot password action
                      print('Forgot Password?');
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Space between forgot password and sign up link
                  RichText(
                    text: TextSpan(
                      text: 'Do you have an account? ',
                      style: TextStyle(color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                            color: _isClicked
                                ? Colors.red
                                : (_isHovering ? Colors.blueAccent : Colors.blue),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                _isClicked = true;
                              });
                              // Navigate to sign up page
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignUpPage()),
                              ).then((_) {
                                setState(() {
                                  _isClicked = false;
                                });
                              });
                            },
                          onEnter: (event) {
                            setState(() {
                              _isHovering = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              _isHovering = false;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: Text(
              'KRD Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue[700],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
