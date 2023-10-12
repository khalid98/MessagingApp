
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class ProfileImage extends StatelessWidget {
   ProfileImage({Key? key, this.radius = 28}) : super(key: key);
  double ?radius;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        CircleAvatar(
          radius: radius!.sp,
          backgroundImage: AssetImage("assets/images/image/Image.png"),
        ),
        Container(
          height: 12.h,
          width: 12.h,
          decoration: BoxDecoration(
              color: AppColors.activeStatus, shape: BoxShape.circle),
        )
      ],
    );
  }
}
