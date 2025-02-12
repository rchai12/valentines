import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Using Assets in Flutter'),
        ),
        body: Center(
          child: Container(
            width: 1000,
            height: 1000,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/waveyHeart.gif'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
