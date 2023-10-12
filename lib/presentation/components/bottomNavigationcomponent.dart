
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class bottomNavigationcomponent extends StatelessWidget {
  VoidCallback ?ontap;
  String SvgPath;
  Color ?SvgColor;

  bottomNavigationcomponent({this.ontap,required this.SvgPath,required this.SvgColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      highlightColor: Colors.transparent,

      child:SvgPicture.asset(
        SvgPath,
        color:SvgColor,
        height: 25.h,
        width: 25.w,
      ),
    );
  }
}
