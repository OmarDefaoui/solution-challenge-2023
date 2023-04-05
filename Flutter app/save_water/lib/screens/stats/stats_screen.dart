import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  List durationsList = ["1 H", "24 H", "1 W", "1 M", "6 M", "1 Y", "All"];
  int indexSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/screens/stats/stats_cucumber.png",
                          height: 34.h,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 20.h),
                        Text(
                          'Cucumber',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            height: 1.171875.h,
                            fontSize: 16.0.sp,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w900,
                            color: const Color.fromARGB(255, 33, 37, 41),
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Icon(
                          Icons.star_border_rounded,
                          size: 12.w,
                          color: const Color(0xff343A40),
                        ),
                      ],
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                      decoration: BoxDecoration(
                          color: const Color(0xffECF4FF),
                          borderRadius: BorderRadius.circular(25.r)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.swap_horizontal_circle_rounded,
                            size: 12.w,
                            color: const Color(0xff0063F5),
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            'See next',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875.h,
                              fontSize: 10.0.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 0, 99, 245),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Container(
                  width: double.maxFinite,
                  height: 324.h,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 254, 254, 254),
                    borderRadius: BorderRadius.circular(50.r),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(10, 87, 91, 97),
                        offset: Offset(-20.0, 40.0),
                        blurRadius: 100.0,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(20, 66, 0, 255),
                        offset: Offset(-15.0, 40.0),
                        blurRadius: 100.0,
                      )
                    ],
                  ),
                  child: Image.asset(
                    "assets/screens/stats/stats_graph.png",
                    width: double.maxFinite,
                    height: double.maxFinite,
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.maxFinite,
                  height: 28.h,
                  child: ListView.builder(
                    itemCount: durationsList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (contexxt, index) {
                      String item = durationsList[index];

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            indexSelected = index;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.w, vertical: 4.h),
                          margin: EdgeInsets.only(right: 8.w),
                          decoration: BoxDecoration(
                            color: indexSelected == index
                                ? const Color(0xffECF4FF)
                                : const Color(0xffDFE2E4),
                            borderRadius: BorderRadius.circular(25.r),
                            border: Border.all(
                              color: indexSelected == index
                                  ? const Color(0xff0063F5)
                                  : const Color(0xffDFE2E4),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              item,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                height: 1.171875.h,
                                fontSize: 12.0.sp,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w900,
                                color: indexSelected == index
                                    ? const Color(0xff0063F5)
                                    : const Color.fromARGB(255, 108, 117, 125),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 8.w, vertical: 10.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/screens/stats/stats_cucumber.png",
                            height: 44.h,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cucumber',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.171875.h,
                                  fontSize: 16.0.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                  color: const Color.fromARGB(255, 33, 37, 41),
                                ),
                              ),
                              SizedBox(height: 2.h),
                              Text(
                                'Healthy',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  height: 1.171875.h,
                                  fontSize: 12.0.sp,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w900,
                                  color:
                                      const Color.fromARGB(255, 108, 117, 125),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '0 Alerts detected',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875.h,
                              fontSize: 12.0.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w900,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            'Estimated growth days: 5',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              height: 1.171875.h,
                              fontSize: 10.0.sp,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 108, 117, 125),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
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
                            'Quality compared to last year',
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
                            '+14.74%',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
