import 'package:flutter/material.dart';

class CityDetail extends StatelessWidget {
  final day;
  CityDetail(this.day);
  @override
  Widget build(BuildContext context) {
    return (Column(
      children: <Widget>[
        Text(
          'Murmansk Oblast, RU',
          style: TextStyle(
              color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.w300),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 60.0),
          child: Text(
            '$day, Mar 20, 2020',
            style: TextStyle(
                color: Colors.white,
                fontSize: 17.0,
                fontWeight: FontWeight.w400),
          ),
        )
      ],
    ));
  }
}
