import 'package:flutter/material.dart';

class InspectionView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 50.0,
          
          backgroundColor: Colors.tealAccent,
          child: Text('Inspect ID'),
        ),
        title: Text('Date - location'),
        subtitle: Text('Inspect ID'),
        trailing: Icon(Icons.more),
      ),
    );
  }
}