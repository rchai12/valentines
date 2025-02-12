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
          title: Text('Valentine\'s Images'),
          backgroundColor: const Color.fromARGB(255, 186, 149, 182), // Set title background color
          bottom: TabBar(
            indicatorColor: Colors.orange, // Set tab indicator color
            labelColor: const Color.fromARGB(255, 255, 255, 255), // Set selected tab text color
            unselectedLabelColor: Colors.black54, // Set unselected tab text color
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