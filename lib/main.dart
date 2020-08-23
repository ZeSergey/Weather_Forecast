import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red[500],
        appBar: AppBar(
          title: Text(
            "Weather Forecast",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20.0),
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
              cityDetail(),
              temperatureDetail(),
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
      ),
    );
  }
}

Widget cityDetail() {
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
          'Friday, Mar 20, 2020',
          style: TextStyle(
              color: Colors.white, fontSize: 17.0, fontWeight: FontWeight.w400),
        ),
      )
    ],
  ));
}

Widget temperatureDetail() {
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
            '14 °F',
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

//Widget bottomDetail() {
//  return Expanded(
//    child: (ListView(
//
//      padding: const EdgeInsets.all(8),
//      children: <Widget>[
//        Container(
//          height: 50,
//          color: Colors.amber[600],
//          child: const Center(child: Text('Entry A')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[500],
//          child: const Center(child: Text('Entry B')),
//        ),
//        Container(
//          height: 50,
//          color: Colors.amber[100],
//          child: const Center(child: Text('Entry C')),
//        ),
//      ],
//    )),
//  );
//}

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

class CardBottomDetail extends StatelessWidget {
  final day;
  final value;
  CardBottomDetail(this.day, this.value);
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

void main() {
  runApp(
    MyApp(),
  );
}
