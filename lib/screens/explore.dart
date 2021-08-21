import 'package:flutter/material.dart';
import 'package:weather_app_clone/utils/app_colors.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:weather_app_clone/utils/constants.dart';

class ExploreScreen extends StatefulWidget {
  ExploreScreen({Key key}) : super(key: key);

  @override
  _ExploreScreenState createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: bgColor,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: textColor,
            )),
        title: Text(
          'Explore',
          style: TextStyle(
              fontSize: getProportionateScreenWidth(19),
              color: textColor,
              fontWeight: FontWeight.w600,
              fontFamily: Fonts.primaryFont),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: getProportionateScreenHeight(10),
            child: Container(
              width: SizeConfig.screenWidth,
              // padding: EdgeInsets.symmetric(
              //     vertical: getProportionateScreenHeight(10)),
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  ImagesAvailable.backgroundImage["assetPath"],
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3.5,
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  ImagesAvailable.rainyCloudy["assetPath"],
                  width: getProportionateScreenWidth(150),
                  // height: SizeConfig.screenWidth / 2,
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tomorrow',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: Fonts.primaryFont),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(70),
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: Fonts.primaryFont,
                        ),
                        children: <TextSpan>[
                          TextSpan(text: '27'),
                          TextSpan(
                              text: "/30",
                              style: TextStyle(
                                fontSize: getProportionateScreenWidth(30),
                                color: textColor,
                                fontWeight: FontWeight.w600,
                                fontFamily: Fonts.primaryFont,
                              ))
                        ],
                      ),
                    ),
                    Text(
                      'Rainy Cloudy',
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(20),
                          color: textColor,
                          fontWeight: FontWeight.w600,
                          fontFamily: Fonts.primaryFont),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0.0,
            child: Container(
              width: SizeConfig.screenWidth,
              height: getProportionateScreenHeight(440),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: ListView(
                children: [
                  SizedBox(
                    height: getProportionateScreenHeight(7),
                  ),
                  Center(
                    child: Container(
                      width: getProportionateScreenWidth(86),
                      height: getProportionateScreenHeight(6),
                      decoration: BoxDecoration(color: Colors.grey[600]),
                    ),
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(35),
                  ),
                  //
                  //Monday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Mon',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.rainy["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Rainy',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '27/30',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(29),
                  ),
                  //
                  //Tuesday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Tue',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.rainyCloudy["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Storm',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '21/30',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(29),
                  ),
                  //
                  //Wednesday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Wed',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.sunny["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Sunny',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '32/33',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(29),
                  ),
                  //
                  //Thursday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Thu',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.partlyCloudy["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Cloudy',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '30/31',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(29),
                  ),
                  //
                  //Friday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Fri',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.rainy["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Rainy',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '19/20',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(29),
                  ),
                  //
                  //Saturday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Sat',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.partlyCloudy["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Cloudy',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '27/30',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(29),
                  ),
                  //
                  //Sunday
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Sun',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            ImagesAvailable.rainy["assetPath"],
                            width: getProportionateScreenWidth(40),
                            // height: SizeConfig.screenWidth / 2,
                          ),
                          SizedBox(
                            width: getProportionateScreenWidth(7),
                          ),
                          Text(
                            'Rainy',
                            style: TextStyle(
                                fontSize: getProportionateScreenWidth(19),
                                color: textColor,
                                fontWeight: FontWeight.w500,
                                fontFamily: Fonts.primaryFont),
                          ),
                        ],
                      ),
                      Text(
                        '14/16',
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(19),
                            color: textColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: Fonts.primaryFont),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
