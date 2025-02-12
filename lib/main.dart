import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Valentine\' Images'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Heartbeat'),
              Tab(text: 'Floating Hearts'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Image.asset("assets/images/heartbeat.gif",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,),
            ),
            Center(
              child: Image.asset("assets/images/heartsfloating.gif",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,),
            ),
          ],
        ),
      ),
    );
  }
}