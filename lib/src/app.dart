import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {

  int counter = 0;

  void _fetchImage()
  {

  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      body: Text('$counter'),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _fetchImage,
      ),
      appBar: AppBar(
        title: Text('Lets see the images!'),
      ),
    )
  );
  }
}