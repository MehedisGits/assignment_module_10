import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: GreetingPage(),
    );
  }
}

class GreetingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // "Hello, World!" text with custom styling
            Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 32, // Larger font size
                color: Colors.red, // Red color
                fontWeight: FontWeight.bold, // Bold text
              ),
            ),
            SizedBox(height: 10), // Space between text widgets

            // "Welcome to Flutter!" text
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 24, // Slightly smaller font size
                color: Colors.black, // Default color
              ),
            ),
            SizedBox(height: 20), // Space between text and image
            //image
            Image.asset(
                'assets/img/ss.jpg',
            height: 200, width: 200,
            ),

            SizedBox(height: 20), // Space between image and button

            // Interactive Button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Green button color
              ),
              onPressed: () {
                // Show a Snackbar when pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
