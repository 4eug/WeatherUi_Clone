import 'package:flutter/material.dart';
import 'package:weather_app_clone/utils/app_colors.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather_app_clone/utils/constants.dart';
import 'package:weather_app_clone/widgets/navigationbar_widget.dart';
import 'package:weather_app_clone/widgets/textwidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  // final Color activeColor = Color;
  // final Color trackColor;
  // final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: bgColor,
        appBar: AppBar(
          key: _scaffoldKey,
          backgroundColor: bgColor,
          elevation: 0.0,
          leading: Image.asset(
            IconsAvailable.menuIcon["assetPath"],
            height: SizeConfig.blockSizeVertical * 2,
            width: SizeConfig.blockSizeHorizontal * 5,
          ),
          actions: [
            Container(
              child: Switch(
                  value: isSwitchOn,
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      isSwitchOn = value;
                      isSwitchOn
                          ? bgColor = Colors.black
                          : bgColor = Colors.white;
                      isSwitchOn
                          ? textColor = Colors.white
                          : textColor = Colors.black;
                      //review
                      isSwitchOn ? Brightness.light : Brightness.dark;
                    });
                  }),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenHeight(80)),
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  ImagesAvailable.backgroundImage["assetPath"],
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Accra,Ghana",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(19),
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: Fonts.primaryFont),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(37),
                ),
                Center(
                  child: Image.asset(ImagesAvailable.partlyCloudy["assetPath"],
                      // height: getProportionateScreenWidth(20),
                      width: getProportionateScreenWidth(162)),
                ),
                SizedBox(height: getProportionateScreenHeight(5)),
                Center(
                  child: degrees(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Partly Cloudy",
                      style: TextStyle(
                        fontSize: getProportionateScreenWidth(23),
                        color: textColor,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.primaryFont,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(90)),
                Center(
                  child: Text(
                    "Hourly",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontFamily: Fonts.primaryFont,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "13:00pm",
                          style: TextStyle(
                            height: 1,
                            fontSize: 11,
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont,
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        Container(
                          child: Image.asset(
                            ImagesAvailable.partlyCloudy["assetPath"],
                            height: getProportionateScreenHeight(50),
                            width: getProportionateScreenHeight(50),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(1),
                        ),
                        degrees1()
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "16:00pm",
                          style: TextStyle(
                            height: 1,
                            fontSize: 11,
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont,
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        Container(
                          child: Image.asset(
                            ImagesAvailable.sunny["assetPath"],
                            height: getProportionateScreenHeight(50),
                            width: getProportionateScreenHeight(50),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(1),
                        ),
                        degrees2()
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          "07:00pm",
                          style: TextStyle(
                            height: 1,
                            fontSize: 11,
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont,
                          ),
                        ),
                        SizedBox(height: getProportionateScreenHeight(5)),
                        Container(
                          child: Image.asset(
                            ImagesAvailable.moonCloudy["assetPath"],
                            height: getProportionateScreenHeight(50),
                            width: getProportionateScreenHeight(50),
                          ),
                        ),
                        SizedBox(
                          height: getProportionateScreenHeight(1),
                        ),
                        degrees3()
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
                bottom: 35,
                left: getProportionateScreenWidth(50),
                child: Container(
                    height: getProportionateScreenHeight(60),
                    width: getProportionateScreenWidth(275),
                    child: NavigationBar()))
          ],
        ));
  }
}
