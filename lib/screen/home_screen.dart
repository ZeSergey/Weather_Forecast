import 'package:flutter/material.dart';
import 'package:dock_test/components/temperature_detail.dart';
import 'package:dock_test/components/extra_detail.dart';
import 'package:dock_test/components/card_bottom_detail.dart';
import 'package:dock_test/components/city_detail.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.red[500],
      appBar: AppBar(
        title: Text(
          "Weather Forecast",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20.0),
        ),
        backgroundColor: Colors.red[500],
        elevation: 0.0,
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintText: 'Enter City Name',
                hintStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
              ),
            ),
            CityDetail('Friday'),
            TemperatureDetail(14),
            extraWeatherDetail(),
            Text(
              '7-DAY WEATHER FORECAST',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 17.0,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 20.0,
            ),
            bottomDetail(),
          ],
        ),
      ),
    ));
  }
}

Widget bottomDetail() {
  return Container(
    height: 105.0,
    child: (ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CardBottomDetail('Friday', 6),
        CardBottomDetail('Saturday', 5),
        CardBottomDetail('Sunday', 22),
      ],
    )),
  );
}
