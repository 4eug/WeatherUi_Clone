import 'package:flutter/material.dart';
import 'package:weather_app_clone/screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
        ),
      ),
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
