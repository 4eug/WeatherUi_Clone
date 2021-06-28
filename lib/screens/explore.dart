import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:weather_app_clone/utils/constants.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isSwitchOn = false;

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
        children: [],
      ),
    );
  }
}
