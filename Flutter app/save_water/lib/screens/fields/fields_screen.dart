import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:save_water/models/field_model.dart';

class FieldsScreen extends StatefulWidget {
  const FieldsScreen({super.key});

  @override
  State<FieldsScreen> createState() => _FieldsScreenState();
}

class _FieldsScreenState extends State<FieldsScreen> {
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
                Text(
                  'Agricultural fields',
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
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.0.w,
                  childAspectRatio: .8,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: List.generate(
                    FieldModel.fieldsList.length,
                    (index) {
                      FieldModel field = FieldModel.fieldsList[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/StatsScreen");
                        },
                        child: Container(
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(9.0.r),
                                child: Image.asset(
                                  field.image,
                                  fit: BoxFit.cover,
                                  height: 140.0.h,
                                  width: double.maxFinite,
                                  colorBlendMode: BlendMode.dstATop,
                                ),
                              ),
                              SizedBox(width: 20.h),
                              Padding(
                                padding: EdgeInsets.all(8.0.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      field.title,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        height: 1.171875,
                                        fontSize: 14.0,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    SizedBox(height: 5.h),
                                    Text(
                                      field.description,
                                      textAlign: TextAlign.left,
                                      style: const TextStyle(
                                        height: 1.171875,
                                        fontSize: 14.0,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          field.status,
                                          textAlign: TextAlign.left,
                                          style: const TextStyle(
                                            height: 1.171875,
                                            fontSize: 12.0,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w400,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              field.isBookmared =
                                                  !field.isBookmared;
                                            });
                                          },
                                          child: Icon(
                                            Icons.bookmark,
                                            size: 12.w,
                                            color: field.isBookmared
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
                        ),
                      );
                    },
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
