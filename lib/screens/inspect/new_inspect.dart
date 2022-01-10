import 'package:flutter/material.dart';

class InspectScreen extends StatefulWidget {
  const InspectScreen({Key? key}) : super(key: key);

  @override
  State<InspectScreen> createState() => _InspectScreenState();
}

class _InspectScreenState extends State<InspectScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Container(

            child: Text(
              'Inspections',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //tabbar
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                labelPadding: EdgeInsets.only(left: 20, right: 20),
                controller: _tabController,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                isScrollable: true,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: "All",
                  ),
                  Tab(
                    text: "Complete",
                  ),
                  Tab(
                    text: "Pending",
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 100,
            child: TabBarView(
              controller: _tabController,
              children: [
                Text("Everything"),
                Text("Done"),
                Text("Awaiting"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
