/**import 'package:flutter/material.dart';

class Appbar extends StatefulWidget {
  Color background;
  int elevation;
  Widget leading;
  Widget title;
  bool centerTitle;
  List<Widget> actions;

  Appbar({ Key? key, required this.background, required this.elevation, required this.leading, required this.title, required this.centerTitle, required this.actions }) : super(key: key);

  @override
  _AppbarState createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: this.back,
    );
  }
}
**/