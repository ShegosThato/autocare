import 'package:autocare/components/button_col.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
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
              width: MediaQuery.of(context).size.width * 0.8,
              bottom: 10,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                color: Colors.white54,
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ButtonCol(
                          color: Colors.teal,
                          icon: (Icons.report),
                          label: 'Reports'),
                      ButtonCol(
                          color: Colors.blue,
                          icon: (Icons.confirmation_number),
                          label: 'Total'),
                      ButtonCol(
                          color: Colors.red, icon: (Icons.help), label: 'Help'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Card(
        //     elevation: 3,
        //     borderOnForeground: false,
        //     child: ListTile(
        //       leading: Icon(Icons.recent_actors),
        //       title: Text('Title'),
        //       subtitle: const Text('subtitle'),
        //       trailing: ElevatedButton(
        //         child: Icon(Icons.settings),
        //         onPressed: () {},
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
