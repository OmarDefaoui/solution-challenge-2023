import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    startCounterToNextScreen(context);

    return Material(
      child: SizedBox(
        width: double.maxFinite,
        height: 800.0.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 205.0.w,
              height: 282.0.h,
              child: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset(
                  "assets/images/248592122dc0af64a7f39c49caf8c4fff914f346.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 205.0.w,
                  height: 282.0.h,
                  colorBlendMode: BlendMode.dstATop,
                ),
              ),
            ),
            SizedBox(height: 30.h),
            SizedBox(
              width: 177.0.w,
              height: 37.0.h,
              child: ClipRRect(
                borderRadius: BorderRadius.zero,
                child: Image.asset(
                  "assets/images/3b69f617fbd9e6a7157f997f3ca23c374c4d0daf.png",
                  color: null,
                  fit: BoxFit.cover,
                  width: 177.0.w,
                  height: 37.0.h,
                  colorBlendMode: BlendMode.dstATop,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void startCounterToNextScreen(context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/BaseScreen');
    });
  }
}
