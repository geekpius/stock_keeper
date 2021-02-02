import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(
            'https://avatars.githubusercontent.com/u/17993555?s=460&u=1a276a79890a7c814d6e38b4140ce2f0e63a1cb5&v=4'),
      ),
    );
  }
}
