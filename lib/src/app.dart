import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;

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
    counter +=1;

    get('http://jsonplaceholder.typicode.com/posts/$counter');

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