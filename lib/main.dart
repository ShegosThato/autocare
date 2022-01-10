import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:autocare/screens/auth/profile.dart';
import 'package:autocare/screens/search/search.dart';
import 'package:autocare/screens/inspect/new_inspect.dart';
import 'package:autocare/screens/auth/login.dart';
import 'package:autocare/screens/auth/signup.dart';
import 'package:autocare/screens/root.dart';
import 'package:autocare/util/theme_config.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "AutoGrandis",
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      initialRoute: "/",
      routes: {
        '/': (context) => RootScreen(),
        '/search': (context) => SearchScreen(),
        '/new_inspect': (context) => InspectScreen(),
        '/profile': (context) => ProfileScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
      },
    );
  }
}
