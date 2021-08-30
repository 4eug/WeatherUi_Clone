import 'package:flutter/material.dart';
import 'package:weather_app_clone/screens/home.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:weather_app_clone/utils/constants.dart';

void main() {
  runApp(MediaQ());
}

class MediaQ extends StatelessWidget {
  const MediaQ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      theme: ThemeData(
          accentColor: Colors.black,
          cardColor: Colors.black,
          buttonColor: Colors.grey,
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'Montserrat',
          appBarTheme: AppBarTheme(
              brightness: Brightness.light, backgroundColor: Colors.white),
          // backgroundColor: Colors.white,
          textTheme: TextTheme(
            // current temperature
            headline1: TextStyle(
              fontSize: getProportionateScreenWidth(80),
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            headline2: TextStyle(
                fontSize: getProportionateScreenWidth(19),
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.primaryFont),
            // current condition text
            headline3: TextStyle(
              fontSize: getProportionateScreenWidth(23),
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // big temperature on explore page
            headline4: TextStyle(
              fontSize: getProportionateScreenWidth(10),
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // small temperature on explore page
            headline5: TextStyle(
              fontSize: getProportionateScreenWidth(70),
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            headline6: TextStyle(
                fontSize: getProportionateScreenWidth(19),
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontFamily: Fonts.primaryFont),
            // hourly temparature
            bodyText1: TextStyle(
              height: 1,
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.primaryFont,
            ),
            // degrees
            bodyText2: TextStyle(
              fontSize: getProportionateScreenWidth(80),
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.primaryFont,
            ),
            // city and country

            // 'hourly'
            subtitle1: TextStyle(
              fontSize: getProportionateScreenWidth(20),
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // hourly time
            subtitle2: TextStyle(
              height: 1,
              fontSize: getProportionateScreenWidth(11),
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.primaryFont,
            ),
          )),
      darkTheme: ThemeData(
          cardColor: Colors.white,
          accentColor: Colors.white,
          buttonColor: Colors.grey,
          scaffoldBackgroundColor: Color(0xFF09090A),
          brightness: Brightness.dark,
          fontFamily: 'Montserrat',
          appBarTheme: AppBarTheme(
              brightness: Brightness.dark, backgroundColor: Color(0xFF09090A)),
          textTheme: TextTheme(
            // current temperature
            headline1: TextStyle(
              fontSize: getProportionateScreenWidth(80),
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            headline2: TextStyle(
                fontSize: getProportionateScreenWidth(19),
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontFamily: Fonts.primaryFont),
            // current condition text
            headline3: TextStyle(
              fontSize: getProportionateScreenWidth(23),
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // small temperature on explore page
            headline4: TextStyle(
              fontSize: getProportionateScreenWidth(70),
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // small temperature on explore page
            headline5: TextStyle(
              fontSize: getProportionateScreenWidth(30),
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // hourly temparature
            bodyText1: TextStyle(
              height: 1,
              fontSize: 22,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.primaryFont,
            ),
            // degrees
            bodyText2: TextStyle(
              fontSize: getProportionateScreenWidth(80),
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
              fontFamily: Fonts.primaryFont,
            ),
            // city and country

            // 'hourly'
            subtitle1: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont,
            ),
            // hourly time
            subtitle2: TextStyle(
              height: 1,
              fontSize: 11,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontFamily: Fonts.primaryFont,
            ),
          )),
      title: 'Weather App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
