import 'package:flutter/material.dart';

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
            fontFamily: 'Roboto',
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
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
          color: Colors.grey[200],
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.transparent,
                    child: Image.asset(
                      "assets/images/Banner.png",
                      width: 100,
                      
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Divider(),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: const Text('1'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(207, 216, 220, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: const Text('1'),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromRGBO(207, 216, 220, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
