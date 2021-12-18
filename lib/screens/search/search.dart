import 'package:flutter/material.dart';
import 'package:autocare/components/inspection/inspection_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  Icon customIcon = const Icon(Icons.search);
  final TextEditingController _textcontroller = TextEditingController(text: '');
  final List<InspectionView> inspectList = [
    InspectionView(),
    InspectionView(),
    InspectionView(),
    InspectionView(),
    InspectionView(),
  ];

  @override
  void initState() {
    super.initState();

  }

  @override
  void dispose() {
    _textcontroller.dispose();
    super.dispose();
  }

  void _submitSearch() {
    setState(() {
      customIcon = const Icon(Icons.refresh);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        toolbarHeight: 55.0,
        automaticallyImplyLeading: false,
        title: ListTile(
          // leading: Icon(
          //   Icons.clear,
          //   color: Colors.black87,
          //   size: 28,
          // ),
          title: TextField(
            controller: _textcontroller,
            decoration: InputDecoration(
              hintText: "Search anything here...",
              hintStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
              border: InputBorder.none,
            ),
            style: TextStyle(
              color: Colors.black,
            ),
            onEditingComplete: _submitSearch,
            onChanged: (String searchValue) {
              //check if the user's input is not empty
              if (searchValue.isNotEmpty) {
                setState(() {
                  customIcon = const Icon(Icons.clear);
                });
              } else {
                setState(() {
                  customIcon = const Icon(Icons.search);
                });
              }
            },
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: customIcon,
            iconSize: 30,
            color: Colors.deepOrangeAccent,
            onPressed: () {
              setState(() {
                //check if the icon is search
                if (customIcon.icon == Icons.search) {
                  customIcon = const Icon(Icons.clear);
                } else {
                  _textcontroller.clear();
                  customIcon = const Icon(Icons.search);
                }
              });
            },
          ),
        ],
      ),
      body: Card(
        elevation: 3,
        color: Colors.white70,
        child: ListView.builder(
          itemCount: inspectList.length,
          itemBuilder: (BuildContext context, int index) {
            return inspectList[index];
          },
        ),
      ),
    );
  }
}
