import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "Search here...",
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30,
            color: Colors.deepOrangeAccent,
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Text('search result'),
      ),
    );
  }
}
