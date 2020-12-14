import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'firstScreen.dart';

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
      routes: {
        '/sk': (context) => firstScreen(),
      },
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
    // Timer(Duration(seconds: 20), );
  }

  // void Shaki() {
  //   Navigator.pushReplacement(
  //     context,
  //     MaterialPageRoute(builder: (context) => firstScreen()),
  //   );
  // }

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
          SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)),
            splashColor: Colors.lime,
            highlightColor: Colors.indigo,
            onPressed: () {
              Navigator.pushNamed(context, '/sk');
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => firstScreen(),
              //   ),
              // );
            },
            padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
            color: Colors.red,
            textColor: Colors.white,
            child: Text(
              'First Screen',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
