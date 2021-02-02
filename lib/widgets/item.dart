import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String networkImage;
  Item({this.networkImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Image.network(
        networkImage,
        fit: BoxFit.fill,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(20),
    );
  }
}
