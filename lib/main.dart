
import 'package:flutter/material.dart';
import 'package:autocare/screens/profile.dart';
import 'package:autocare/screens/search.dart';
import 'package:autocare/screens/new_inspect.dart';
import 'package:autocare/screens/splash.dart';
import 'package:autocare/root.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Teabag Inspection",
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/': (context) => RootScreen(),
        '/search': (context) => SearchScreen(),
        '/new_inspect': (context) => InspectScreen(),
        '/profile': (context) => ProfileScreen(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}

