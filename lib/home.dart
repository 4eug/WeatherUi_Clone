import 'package:flutter/material.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather_app_clone/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

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
      body: Stack(
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
                      fontWeight: FontWeight.w400),
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
                child: Text(
                  "31" "°",
                  style: TextStyle(
                      fontSize: 120,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
