import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Greeting App',
      home: GreetingScreen(),
    );
  }
}

class GreetingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Greeting App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            const Text(
              'Welcome to Flutter!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png', // Example URL
              height: 100,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Button Pressed!')),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Button color
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
    );
  }
}
