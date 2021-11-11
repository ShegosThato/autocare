import 'package:flutter/material.dart';

class ButtonCol extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String label;
  ButtonCol({ Key? key, required this.color, required this.icon, required this.label }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(this.icon, color: this.color,),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            this.label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: this.color,
            ),
          ),
        ),

      ],
    );
  }
}