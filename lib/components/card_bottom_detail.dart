import 'package:flutter/material.dart';
import 'package:dock_test/screen/detail_screen.dart';

class CardBottomDetail extends StatelessWidget {
  final day;
  final value;
  CardBottomDetail(this.day, this.value);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailScreen(day, value)),
        );
      },
      child: Container(
        width: 160.0,
        height: 105.0,
        margin: EdgeInsets.symmetric(horizontal: 4.0),
        color: Colors.white30,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 10.0),
              child: Text(
                '$day',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.w300),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$value °F ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w300),
                ),
                Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 35.0,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
