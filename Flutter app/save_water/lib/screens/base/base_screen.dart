import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../diseases/disease_detection_page.dart';
import '../alerts/alerts_screen.dart';
import '../fields/fields_screen.dart';
import '../news/news_screen.dart';
import '../pumps_remote/pumps_remote_screen.dart';
import '../weather/weather_screen.dart';
import 'widgets/navbar_item.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  List screens = const [
    WeatherScreen(),
    NewsScreen(),
    FieldsScreen(),
    AlertsScreen(),
    PumpsRemoteScreen(),
  ];

  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          screens[indexSelected],
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 280.w,
              height: 60.h,
              margin: EdgeInsets.only(bottom: 20.h),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.r)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.08),
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NavBarItem(
                    iconName: "nav_weather",
                    index: 0,
                    indexSelected: indexSelected,
                    onTap: () {
                      setState(() {
                        indexSelected = 0;
                      });
                    },
                  ),
                  NavBarItem(
                    iconName: "nav_news",
                    index: 1,
                    indexSelected: indexSelected,
                    onTap: () {
                      setState(() {
                        indexSelected = 1;
                      });
                    },
                  ),
                  NavBarItem(
                    iconName: "nav_stats",
                    index: 2,
                    indexSelected: indexSelected,
                    onTap: () {
                      setState(() {
                        indexSelected = 2;
                      });
                    },
                  ),
                  NavBarItem(
                    iconName: "nav_remote",
                    index: 3,
                    indexSelected: indexSelected,
                    onTap: () {
                      setState(() {
                        indexSelected = 3;
                      });
                    },
                  ),
                  NavBarItem(
                    iconName: "nav_alerts",
                    index: 4,
                    indexSelected: indexSelected,
                    onTap: () {
                      setState(() {
                        indexSelected = 4;
                      });
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => DiseaseDetectionPage(pageTitle: "title",)));
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
