import 'package:flutter/material.dart';

class ExtraDetail extends StatelessWidget {
  final number;
  final value;
  ExtraDetail(this.number, this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 40.0,
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.ac_unit,
            color: Colors.white,
            size: 30.0,
          ),
          Text(
            '$number',
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
          Text(
            '$value',
            style: TextStyle(color: Colors.white, fontSize: 12.0),
          ),
        ],
      ),
    );
  }
}

Widget extraWeatherDetail() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 45.0),
    child: (Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ExtraDetail(5, 'km/hr'),
        ExtraDetail(3, '%'),
        ExtraDetail(20, '%'),
      ],
    )),
  );
}
