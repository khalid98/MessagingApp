

 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

AppBar AppBarComponent ({String ?title, Color? backgroundColor,List<Widget>?actions,bool? automaticallyImplyLeading}){
  return AppBar(
    title: Text(title??""),
    toolbarHeight: 60.h,
    elevation:0,
    backgroundColor: AppColors.ScaffoldColor,
    actions:actions??[],
    automaticallyImplyLeading: automaticallyImplyLeading??true,

  );
}