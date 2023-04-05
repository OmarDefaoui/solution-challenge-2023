import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_water/models/news_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
                Center(
                    child:
                        Image.asset("assets/screens/weather/weather_city.png")),
                SizedBox(height: 40.h),
                Text(
                  'News Daily',
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875.h,
                    fontSize: 20.0.sp,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                SizedBox(height: 20.h),
                ListView.builder(
                  itemCount: NewsModel.newsList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    NewsModel news = NewsModel.newsList[index];

                    return Container(
                      width: double.maxFinite,
                      height: 150.h,
                      padding: EdgeInsets.all(10.w),
                      margin: EdgeInsets.symmetric(vertical: 12.h),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 252, 252),
                        borderRadius: BorderRadius.circular(9.0.r),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromARGB(63, 0, 0, 0),
                            offset: Offset(0.0, 0.0),
                            blurRadius: 4.0,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 100.0.w,
                            height: 130.0.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0.r),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color.fromARGB(63, 0, 0, 0),
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(9.0.r),
                              child: Image.asset(
                                news.image,
                                fit: BoxFit.cover,
                                width: 100.0.w,
                                height: 130.0.h,
                                colorBlendMode: BlendMode.dstATop,
                              ),
                            ),
                          ),
                          SizedBox(width: 20.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  news.title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    height: 1.171875.h,
                                    fontSize: 16.0.sp,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                  ),
                                ),
                                SizedBox(height: 8.h),
                                Expanded(
                                  child: Text(
                                    news.description,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      height: 1.171875.h,
                                      fontSize: 14.0.sp,
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w400,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      news.date,
                                      overflow: TextOverflow.visible,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        height: 1.171875.h,
                                        fontSize: 10.0.sp,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(width: 10.w),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          news.isBookmared = !news.isBookmared;
                                        });
                                      },
                                      child: Icon(
                                        Icons.bookmark,
                                        size: 12.w,
                                        color: news.isBookmared
                                            ? const Color(0xff8DBBFF)
                                            : const Color(0xff414B5A),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
