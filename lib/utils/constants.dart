import 'package:flutter/cupertino.dart';
import 'package:intl/intl.dart';

bool isSwitchOn = false;

var dayOrNight;
var date = DateFormat('H').format(DateTime.now());
var dateHour = int.parse(date);


class IconsAvailable {
  static const menuIcon = {
    'assetImage': AssetImage('assets/images/menu.png'),
    'assetPath': 'assets/images/menu.png',
  };

  static const backIcon = {
    'assetImage': AssetImage('assets/images/arrowleft.png'),
    'assetPath': 'assets/images/arrowleft.png',
  };

  static const homeIcon = {
    'assetImage': AssetImage('assets/images/home.png'),
    'assetPath': 'assets/images/home.png',
  };

  static const searchIcon = {
    'assetImage': AssetImage('assets/images/search.png'),
    'assetPath': 'assets/images/search.png',
  };

  static const discoveryIcon = {
    'assetImage': AssetImage('assets/images/explore.png'),
    'assetPath': 'assets/images/explore.png',
  };

  static const profileIcon = {
    'assetImage': AssetImage('assets/images/profile.png'),
    'assetPath': 'assets/images/profile.png',
  };
}

class Fonts {
  static const primaryFont = "Montserrat";
}

class ImagesAvailable {
  static const backgroundImage = {
    'assetImage': AssetImage('assets/images/background.png'),
    'assetPath': 'assets/images/background.png',
  };

  static const partlyCloudy = {
    'assetImage': AssetImage('assets/images/Sunnyday.png'),
    'assetPath': 'assets/images/Sunnyday.png',
  };

  static const sunny = {
    'assetImage': AssetImage('assets/images/Sunnyday.png'),
    'assetPath': 'assets/images/Sunnyday.png',
  };

  static const rainy = {
    'assetImage': AssetImage('assets/images/39.png'),
    'assetPath': 'assets/images/39.png',
  };

  static const rainyCloudy = {
    'assetImage': AssetImage('assets/images/13.png'),
    'assetPath': 'assets/images/13.png',
  };

  static const moonCloudy = {
    'assetImage': AssetImage('assets/images/15.png'),
    'assetPath': 'assets/images/15.png',
  };

  static const midrainy = {
    'assetImage': AssetImage('assets/images/7.png'),
    'assetPath': 'assets/images/7.png',
  };
}
