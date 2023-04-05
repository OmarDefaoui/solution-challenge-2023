import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlertDetailsScreen extends StatelessWidget {
  const AlertDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                "assets/images/6ae78c087a650f2ff1211a5afa414e5baafbcf35.png",
                fit: BoxFit.cover,
                width: double.maxFinite,
                height: 300.h,
                colorBlendMode: BlendMode.dstATop,
              ),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/screens/stats/stats_position.png",
                          height: 34.h,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20.w),
                        Column(
                          children: [
                            Text(
                              'Monitor',
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 1.171875.h,
                                fontSize: 16.0.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(255, 52, 58, 64),
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Tomatoes',
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 1.171875.h,
                                fontSize: 14.0.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: const Color(0xff343A40),
                      size: 30.h,
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(height: 10.h),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                margin: EdgeInsets.symmetric(horizontal: 20.w),
                decoration: BoxDecoration(
                  color: const Color(0xffD3F9D8),
                  borderRadius: BorderRadius.circular(10.r),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 2,
                      color: const Color(0xff000000).withOpacity(.075),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/screens/stats/stats_circle.png",
                      height: 50.h,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 16.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Saved water',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875.h,
                            fontSize: 14.0.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 52, 58, 64),
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          '+20.13%',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875.h,
                            fontSize: 14.0.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 52, 58, 64),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Status tracking',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        height: 1.171875.h,
                        fontSize: 14.0.sp,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 52, 58, 64),
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              text: const TextSpan(
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 52, 58, 64),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Speed of growth: ',
                                  ),
                                  TextSpan(
                                    text: '+2%',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Aug 08, 2022 | 09:26:08 AM',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                height: 1.171875.h,
                                fontSize: 10.0.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 52, 58, 64),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_circle_up_rounded,
                          color: const Color(0xff51CF66),
                          size: 20.w,
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              text: const TextSpan(
                                style: TextStyle(
                                  height: 1.171875,
                                  fontSize: 12.0,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(255, 52, 58, 64),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Quality of leaves: ',
                                  ),
                                  TextSpan(
                                    text: 'Burn detected',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Sep 01, 2022 | 09:25:05 AM',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                height: 1.171875.h,
                                fontSize: 10.0.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 52, 58, 64),
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_circle_down_rounded,
                          color: const Color(0xffD45151),
                          size: 20.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              const Divider(),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'View all alerts',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          height: 1.171875.h,
                          fontSize: 16.0.sp,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 52, 58, 64),
                        ),
                      ),
                      SizedBox(width: 14.w),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: const Color(0xff343A40),
                        size: 10.w,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
