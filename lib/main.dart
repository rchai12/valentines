import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _showPopupImage() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/images/rose.gif'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Valentine\'s Images'),
          backgroundColor: const Color.fromARGB(
              255, 186, 149, 182), // Set title background color
          bottom: TabBar(
            indicatorColor: Colors.orange, // Set tab indicator color
            labelColor: const Color.fromARGB(
                255, 255, 255, 255), // Set selected tab text color
            unselectedLabelColor:
                Colors.black54, // Set unselected tab text color
            tabs: [
              Tab(text: 'Heartbeat'),
              Tab(text: 'Floating Hearts'),
              Tab(text: 'Wavey Heart')
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Image.asset(
                "assets/images/heartbeat.gif",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/heartsfloating.gif",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Center(
              child: Image.asset(
                "assets/images/waveyHeart.gif",
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _showPopupImage,
          child: Icon(Icons.image),
          backgroundColor: Colors.orange,
        ),
      ),
    );
  }
}
