import 'package:flutter/material.dart';

class InspectScreen extends StatelessWidget {
  const InspectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inspect'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Inspect result'),
      ),
    );
  }
}
