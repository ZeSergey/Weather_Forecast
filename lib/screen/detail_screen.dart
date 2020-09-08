import 'package:flutter/material.dart';
import 'package:dock_test/components/temperature_detail.dart';
import 'package:dock_test/components/city_detail.dart';
import 'package:dock_test/components/extra_detail.dart';

class DetailScreen extends StatelessWidget {
  final dayDetail;
  final tempDetail;
  DetailScreen(this.dayDetail, this.tempDetail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[500],
      appBar: AppBar(
        title: Text(
          "Detail Weather $dayDetail",
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
            CityDetail(dayDetail),
            SizedBox(
              height: 20.0,
            ),
            TemperatureDetail(tempDetail),
            extraWeatherDetail(),
          ],
        ),
      ),
    );
  }
}
