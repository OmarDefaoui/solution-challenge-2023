import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    Key? key,
    required this.iconName,
    required this.index,
    required this.indexSelected,
    required this.onTap,
  }) : super(key: key);

  final String iconName;
  final int index, indexSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(top: 1.h, right: 1.w),
        child: SvgPicture.asset(
          'assets/icons/$iconName.svg',
          color: indexSelected == index
              ? const Color(0xff8DBBFF)
              : const Color(0xff414B5A),
          height: 26.h,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
