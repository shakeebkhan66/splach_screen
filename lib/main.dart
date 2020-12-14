import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo),
      title: 'Splash Screen Application',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    debugPrint('Started the Splash Screen');
    Timer(Duration(seconds: 4), Finished);
  }

  void Finished() {
    debugPrint("Finished......!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Shakeeb Khan',
                style: TextStyle(
                  fontSize: 60.0,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Cursive',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage('images/k.png'),
                  radius: 100.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
