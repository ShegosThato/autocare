import 'package:flutter/material.dart';

class InspectScreen extends StatelessWidget {
  const InspectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inspect',
          style: Theme.of(context).appBarTheme.titleTextStyle,
          ),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Inspect result'),
      ),
    );
  }
}
