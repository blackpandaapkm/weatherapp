import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map> weatherlist = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather Info App"),

      ),
      body: ListView.builder(
        itemCount: weatherlist.length,
        itemBuilder: (context, index) {
          final weather = weatherlist[index];
          return Card(
            child: ListTile(
              title: Text(
                "City : ${weather['city']}",
                style: const TextStyle(
                  fontSize: 17,
                ),
              ),
              // Display city name
              subtitle: Text(
                'Temperature: ${weather['temperature']}°C\nCondition: ${weather['condition']}\nHumidity: ${weather['humidity']}%\nWind Speed: ${weather['windSpeed']} km/h',
              ), // Display weather details
            ),
          );
        },
      ),
    );
  }
}