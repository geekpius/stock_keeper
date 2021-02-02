import 'package:flutter/material.dart';
import 'package:stock_keeper/widgets/user_avatar.dart';

class HomeUserDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        UserAvatar(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Fiifi Pius',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Start up capital GHS 200.00',
                  style: TextStyle(
                      color: Colors.white, fontSize: 14.0),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
