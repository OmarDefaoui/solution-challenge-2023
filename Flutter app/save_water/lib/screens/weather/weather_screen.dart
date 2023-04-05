import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Image.asset("assets/screens/weather/weather_city.png"),
                SizedBox(height: 60.h),
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.r),
                  child: Image.asset(
                    "assets/screens/weather/weather_summury.png"
                  ),
                ),
                SizedBox(height: 50.h),
                Image.asset("assets/screens/weather/weather_details.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
