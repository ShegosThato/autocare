import 'dart:async';
import 'package:flutter/material.dart';
import 'package:autocare/root.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => RootScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      
      child: Center(
        child: Text(
          'Auto Inspect',
          style: TextStyle(
            color: Colors.teal,
            fontSize: 20,
          ),
        )
      ),
    );
  }
}
