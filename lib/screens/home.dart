import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app_clone/helpers/weatherGetter.dart';
import 'package:weather_app_clone/model/weather.dart';
import 'package:weather_app_clone/utils/app_colors.dart';
import 'package:weather_app_clone/utils/app_config.dart';
import 'package:weather_app_clone/utils/constants.dart';
import 'package:weather_app_clone/widgets/navigationbar_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Future<WeatherForecast> futureWeather;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureWeather = WeatherService().fetchWeather();
  }

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          key: _scaffoldKey,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/Vectormenu.svg',
              color: Theme.of(context).cardColor,
            ),
          ),
          actions: [
            Container(
              child: Switch(
                  value: isSwitchOn,
                  activeColor: Colors.yellow,
                  onChanged: (value) {
                    setState(() {
                      isSwitchOn = value;
                      // invalid with theme
                      // isSwitchOn
                      //     ? bgColor = Color(0xFF09090A)
                      //     : bgColor = Colors.white;
                      // isSwitchOn
                      //     ? textColor = Colors.white
                      //     : textColor = Colors.black;
                      isSwitchOn ? bgOpacity = 0.9 : bgOpacity = 0.2;
                      //review
                      isSwitchOn ? Brightness.light : Brightness.dark;
                    });
                  }),
            ),
          ],
        ),
        body: FutureBuilder<WeatherForecast>(
          future: futureWeather,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final forecast = snapshot.data;
              final location = forecast.location;
              final country = forecast.country;
              final temperature = forecast.tempCelsius.toInt();
              final currentCondition = forecast.currentCondition;
              final hourlyTemp = forecast.forecastHour;
              return Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        vertical: getProportionateScreenHeight(80)),
                    child: Opacity(
                      //change opacity to dynamic
                      opacity: bgOpacity,
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
                            "$location, $country",
                            style: Theme.of(context).textTheme.headline2
                          ),
                        ],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(37),
                      ),
                      Center(
                        child: Image.asset(
                            'assets/images/$currentCondition${dttInt > 6 && dttInt < 18 ? 'day' : 'night'}.png',
                            // height: getProportionateScreenWidth(20),
                            width: getProportionateScreenWidth(162)),
                      ),
                      SizedBox(height: getProportionateScreenHeight(5)),
                      Center(
                        child:
                            // degrees()
                            Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                // Note: Styles for TextSpans must be explicitly defined.
                                // Child text spans will inherit styles from parent
                                style: Theme.of(context).textTheme.headline1,
                                children: <TextSpan>[
                                  TextSpan(text: temperature.toString()),
                                  TextSpan(
                                      text: "°",
                                      style:
                                          Theme.of(context).textTheme.bodyText2)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            currentCondition,
                            style: Theme.of(context).textTheme.headline3
                          ),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(90)),
                      Center(
                        child: Text(
                          "Hourly",
                          style: Theme.of(context).textTheme.subtitle1
                        ),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          //
                          // first hourly forecast
                          //
                          Column(
                            children: [
                              Text(
                                "13:00pm",
                                style: Theme.of(context).textTheme.subtitle2
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
                              // degrees1()
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(hourlyTemp[0].tempC.round().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                  Text("°",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: Fonts.primaryFont,
                                      ))
                                ],
                              )
                            ],
                          ),
                          //
                          // second hourly forecast
                          //
                          Column(
                            children: [
                              Text(
                                "16:00pm",
                                style: Theme.of(context).textTheme.subtitle2
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
                              // degrees2()
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(hourlyTemp[1].tempC.round().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                  Text("°",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: Fonts.primaryFont,
                                      ))
                                ],
                              )
                            ],
                          ),
                          //
                          // third hourly forecast
                          //
                          Column(
                            children: [
                              Text(
                                "07:00pm",
                                style: Theme.of(context).textTheme.subtitle2
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
                              // degrees3()
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(hourlyTemp[12].tempC.round().toString(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText1),
                                  Text("°",
                                      style: TextStyle(
                                        fontSize: 30,
                                        color: Colors.yellow,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: Fonts.primaryFont,
                                      ))
                                ],
                              )
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
              );
            }
            // loading weather animation
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/animation/load-icon-gif-21.jpg.gif',
                  width: 400,
                ),
                SizedBox(
                  height: 120.0,
                )
              ],
            );
          },
        ));
  }
}
