import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app_clone/screens/explore.dart';
import 'package:weather_app_clone/utils/app_config.dart';

class NavigationBar extends StatefulWidget {
  final Function press;
  NavigationBar({Key key, this.press}) : super(key: key);

  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Theme.of(context).buttonColor),
          ],
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/Vectorhome.svg',
                  height: getProportionateScreenHeight(18),
                  color: Theme.of(context).accentColor,
                )),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/Vectorsearch.svg',
                  height: getProportionateScreenHeight(18),
                  color: Theme.of(context).accentColor,
                )),
            InkWell(
                onTap: widget.press,
                child: SvgPicture.asset(
                  'assets/images/Vectorexplore.svg',
                  height: getProportionateScreenHeight(18),
                  color: Theme.of(context).accentColor,
                )),
            InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  'assets/images/Vectoruser.svg',
                  height: getProportionateScreenHeight(18),
                  color: Theme.of(context).accentColor,
                ))
          ],
        ),
      ),
    );
  }
}
