import 'package:flutter/material.dart';

class TemperatureDetail extends StatelessWidget {
  final temperature;
  TemperatureDetail(this.temperature);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          Icons.wb_sunny,
          color: Colors.white,
          size: 75.0,
        ),
        SizedBox(
          width: 25.0,
        ),
        Column(
          children: <Widget>[
            Text(
              '$temperature °F',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 55.0,
                  fontWeight: FontWeight.w100),
            ),
            Text(
              'LIGHT SHOW',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w300),
            )
          ],
        )
      ],
    );
  }
}
