import 'package:flutter/material.dart';
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
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).cardColor,
            )),
        title: Text(
          'Explore',
          style: Theme.of(context).textTheme.headline2
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: getProportionateScreenHeight(10),
            child: Container(
              width: SizeConfig.screenWidth,
              child: Opacity(
                opacity: 0.2,
                child: Image.asset(
                  //
                  // Address forecast image
                  //
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
                ),
                SizedBox(
                  width: getProportionateScreenWidth(10),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tomorrow',
                      style: Theme.of(context).textTheme.subtitle1
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        // Note: Styles for TextSpans must be explicitly defined.
                        // Child text spans will inherit styles from parent
                        style: Theme.of(context).textTheme.headline4,
                        children: <TextSpan>[
                          TextSpan(text: '27'),
                          TextSpan(
                              text: "/30",
                              style: Theme.of(context).textTheme.headline5)
                        ],
                      ),
                    ),
                    Text(
                      'Rainy Cloudy',
                      style: Theme.of(context).textTheme.subtitle1
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
                      decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(5)),
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6)
                        ],
                      ),
                      Text(
                        '27/30',
                        style: Theme.of(context).textTheme.headline6)
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ],
                      ),
                      Text(
                        '21/30',
                        style: Theme.of(context).textTheme.headline6
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ],
                      ),
                      Text(
                        '32/33',
                        style: Theme.of(context).textTheme.headline6
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ],
                      ),
                      Text(
                        '30/31',
                        style: Theme.of(context).textTheme.headline6
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ],
                      ),
                      Text(
                        '19/20',
                        style: Theme.of(context).textTheme.headline6
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ],
                      ),
                      Text(
                        '27/30',
                        style: Theme.of(context).textTheme.headline6
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
                        style: Theme.of(context).textTheme.headline6
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
                            style: Theme.of(context).textTheme.headline6
                          ),
                        ],
                      ),
                      Text(
                        '14/16',
                        style: Theme.of(context).textTheme.headline6
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
