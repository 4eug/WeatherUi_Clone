import 'package:flutter/material.dart';
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
  bool isSwitchOn = false;
  // final Color activeColor = Color;
  // final Color trackColor;
  // final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    // ignore: unused_local_variable
    final navbar = IconButton(
        icon: Icon(
          Feather.menu,
          size: 30,
          color: Colors.black,
        ),
        onPressed: () {
          _scaffoldKey.currentState.openDrawer();
        });

    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 145),
              child: Opacity(
                opacity: .1,
                child: Image.asset(
                  ImagesAvailable.backgroundImage["assetPath"],
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.blockSizeVertical * 2,
              left: SizeConfig.blockSizeHorizontal * 4,
              child: Container(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 5),
                child: Image.asset(
                  IconsAvailable.menuIcon["assetPath"],
                  height: SizeConfig.blockSizeVertical * 2,
                  width: SizeConfig.blockSizeHorizontal * 5,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: SizeConfig.blockSizeVertical * 1,
              left: SizeConfig.blockSizeHorizontal * 80,
              child: Container(
                padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
                child: Switch(
                    value: isSwitchOn,
                    activeColor: Colors.yellow,
                    onChanged: (value) {
                      setState(() {
                        isSwitchOn = value;
                      });
                    }),
              ),
            ),
            Column(
              children: [
                Padding(
                    padding: EdgeInsets.only(
                  top: SizeConfig.blockSizeVertical * 12,
                  bottom: SizeConfig.blockSizeVertical * 2,
                  left: SizeConfig.blockSizeHorizontal * 4,
                )),
                Center(
                  child: Text(
                    "Accra,Ghana",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: Fonts.primaryFont),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                  child: Image.asset(
                    ImagesAvailable.partlyCloudy["assetPath"],
                    height: SizeConfig.blockSizeVertical * 20,
                    width: SizeConfig.blockSizeHorizontal * 200,
                  ),
                ),
                SizedBox(height: 5),
                Center(
                  child: degrees(),
                ),
                Center(
                  child: Text(
                    "Partly Cloudy",
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: Fonts.primaryFont,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Hourly",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontFamily: Fonts.primaryFont,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "13:00pm",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.primaryFont,
                      ),
                    ),
                    Text(
                      "16:00pm",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.primaryFont,
                      ),
                    ),
                    Text(
                      "07:00pm",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: Fonts.primaryFont,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image.asset(
                        ImagesAvailable.partlyCloudy["assetPath"],
                        height: SizeConfig.blockSizeVertical * 10,
                        width: SizeConfig.blockSizeHorizontal * 15,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImagesAvailable.sunny["assetPath"],
                        height: SizeConfig.blockSizeVertical * 10,
                        width: SizeConfig.blockSizeHorizontal * 15,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        ImagesAvailable.moonCloudy["assetPath"],
                        height: SizeConfig.blockSizeVertical * 10,
                        width: SizeConfig.blockSizeHorizontal * 15,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 0.1),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [degrees1(), degrees2(), degrees3()],
                ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}
