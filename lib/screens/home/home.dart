import 'package:flutter/material.dart';
import 'package:autocare/components/button_col.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //STATE

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Screen'),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          onPressed: () => {},
          icon: Icon(Icons.menu),
        ),
        title: Text(
          'AutoGrandis',
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            letterSpacing: 1.5,
            fontFamily: 'RedhatMono',
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            color: Colors.black,
            onPressed: () => {},
            icon: Icon(Icons.notifications_on_rounded),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.transparent,
                  child: Image.asset(
                    "assets/images/Banner.png",
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 300.0,
                  bottom: 10,
                  
                  child: Container(
                    color: Colors.amber,
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 3,
                borderOnForeground: false,
                child: ListTile(
                  leading: Icon(Icons.recent_actors),
                  title: Text('Title'),
                  subtitle: const Text('subtitle'),
                  trailing: ElevatedButton(
                    child: Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
