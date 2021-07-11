import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/src/container/weather_container.dart';
import 'package:weather_app/src/models/weather.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: WeatherContainer(
        builder: (BuildContext context, Weather? weather) {
          if (weather == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: <Widget>[
              Text('Current Weather State: ${weather.weatherStateName}'),
              Text('temp: ${weather.theTemp}'),
              Text('temp max: ${weather.maxTemp}'),
              Text('temp in: ${weather.minTemp}'),
            ],
          );
        },
      ),
    );
  }
}
