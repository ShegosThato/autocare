import 'package:flutter/material.dart';
import 'header.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          onPressed: () => {},
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'AutoGrandis',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.notifications_on_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Header(),
            Divider(),
            Card(
              color: Colors.lightBlueAccent[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Body(),
            ),
          ],
        ),
      ),
    );
  }
}
