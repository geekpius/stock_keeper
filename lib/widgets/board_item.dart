import 'package:flutter/material.dart';

class BoardItem extends StatelessWidget {
  final Widget icon;
  final String text;
  final Color color;
  BoardItem({this.icon, this.text, this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          borderRadius: BorderRadius.circular(100.0),
          color: color.withOpacity(0.1),
          child: IconButton(
            padding: EdgeInsets.all(15.0),
            icon: icon,
            color: color,
            iconSize: 30.0,
            onPressed: () {},
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
