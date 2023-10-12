
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_stack/image_stack.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';

class Typing extends StatelessWidget {
  List<String>? images=[
    "assets/images/image/Rectangle.jpg",
    "assets/images/image/Rectangle.jpg",
    "assets/images/image/Rectangle.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/images/svg/typing.svg"),
        ImageStack(
          imageSource: ImageSource.Asset,
          imageList: images!,
          totalCount: images!.length,
          imageRadius: 25,
          imageCount: 3,
          imageBorderWidth: 0,
        ),
        Text("+2 others are typing",style: context.textTheme.displaySmall?.copyWith(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400
        ),)
      ],
    );
  }
}
