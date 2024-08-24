import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter demo',
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Demo App'),
            backgroundColor: Colors.blue,
            leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
            flexibleSpace: Image.asset(
              "lib/assets/back.jpg",
              fit: BoxFit.cover,
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: "tab one",
                ),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            elevation: 20.0,
          ),
          body: TabBarView(children: [
            tab1(),
            Icon(Icons.directions_train),
            Icon(Icons.directions_bike),
          ]),
        ),
      ),
    );
  }
}

//or can create custom widget and call it in the TabBarView
Widget tab1() {
  return Container(
    child: Center(
      child: Text("I m the Tab One"),
    ),
  );
}
