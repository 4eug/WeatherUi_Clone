import 'package:flutter/material.dart';
import 'package:weather_app_clone/utils/constants.dart';

Widget degrees() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("31",
          style: TextStyle(
            fontSize: 110,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          )),
      Text("°",
          style: TextStyle(
            fontSize: 90,
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          ))
    ],
  );
}

Widget degrees1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("31",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          )),
      Text("°",
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          ))
    ],
  );
}

Widget degrees2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("28",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          )),
      Text("°",
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          ))
    ],
  );
}

Widget degrees3() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("26",
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          )),
      Text("°",
          style: TextStyle(
            fontSize: 30,
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          ))
    ],
  );
}
