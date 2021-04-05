import 'package:flutter/material.dart';

import 'package:weather_app_clone/utils/constants.dart';

class NavigationBar extends StatefulWidget {
  NavigationBar({Key key}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 35, horizontal: 50),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset(
                IconsAvailable.homeIcon["assetPath"],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                IconsAvailable.searchIcon["assetPath"],
              ),
            ),
            InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ExploreScreen()),
                // );
              },
              child: Image.asset(
                IconsAvailable.discoveryIcon["assetPath"],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                IconsAvailable.profileIcon["assetPath"],
              ),
            )
          ],
        ),
      ),
    );
  }
}
