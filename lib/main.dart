import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "flutter demo 2",
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Scaffold(
      appBar: AppBar(
        title: Text("demo 2"),
      ),
      body: Container(
        height: 200.0,
        width: double.infinity,
        margin: EdgeInsets.all(20.0),
        //  padding: EdgeInsets.symmetric(horizontal: 20.0),
        padding: EdgeInsets.only(top: 20.0),
        //this only effect to the childs inside the container
        alignment: Alignment.bottomCenter,
        color: Colors.pink,
        child: Text(
          "this is the buity",
          style: TextStyle(fontSize: 30.0),
        ),
      ),
    ));
  }
}
