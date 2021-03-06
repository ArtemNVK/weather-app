import 'package:flutter/material.dart';
import 'package:weather_app/presentations/home/widgets/weather_days_list.dart';
import 'package:weather_app/presentations/home/widgets/weather_today.dart';
import 'package:weather_app/resources/images.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
                onPressed: () => print('click'),
                icon: Image.asset(Images.icGeoMark)
            );
          },
        ),
        actions: [
              IconButton(
                  onPressed: () => print('click'),
                  icon: Image.asset(Images.icSearch)
              )
            ],
      ),
      body: SafeArea(
        child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    height: 400,
                    child: WeatherToday(),
                  ),
                ),
                WeatherDaysList()
              ],
            ),
      )
    );
  }
}