import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app_clone/utils/app_colors.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:weather_app_clone/utils/constants.dart';

Widget degrees() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          // Note: Styles for TextSpans must be explicitly defined.
          // Child text spans will inherit styles from parent
          style: TextStyle(
            fontSize: getProportionateScreenWidth(80),
            color: textColor,
            fontWeight: FontWeight.w600,
            fontFamily: Fonts.primaryFont,
          ),
          children: <TextSpan>[
            TextSpan(text: '31'),
            TextSpan(
                text: "°",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(80),
            color: Colors.yellow,
            fontWeight: FontWeight.bold,
            fontFamily: Fonts.primaryFont,
          ))
          ],
        ),
      ),
      
    ],
  );
}

Widget degrees1() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("31",
          style: TextStyle(
            height: 1,
            fontSize: 22,
            color: textColor,
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

degrees2() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("28",
          style: TextStyle(
            height: 1,
            fontSize: 22,
            color: textColor,
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
            height: 1,
            fontSize: 22,
            color: textColor,
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
