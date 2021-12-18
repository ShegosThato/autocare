import 'package:autocare/components/inspection/inspection_card.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          InspectionView(),
          InspectionView(),
          InspectionView(),
          InspectionView(),
        ],
      ),
    );
  }
}
