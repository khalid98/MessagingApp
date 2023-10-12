
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/routes/app_routes.dart';

class ChatTitle extends StatelessWidget {
  const ChatTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/images/svg/backicon.svg",
            height: 24.h,
            width: 24.w,
          ),
        ),
        10.spw,
        CircleAvatar(
          radius: 25.sp,
          backgroundImage: AssetImage(
            "assets/images/image/Image.png",
          ),
        ),
        10.spw,
        Expanded(
          child: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,Routes.GroupDescription);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Fullsnack Designers",
                    style: context.textTheme.displayMedium?.copyWith(
                        fontSize: 18.sp, fontWeight: FontWeight.w700)),
                Text("7 Online, from 12 peoples",
                    style: context.textTheme.displaySmall?.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
        SvgPicture.asset("assets/images/svg/videoicon.svg"),
        SvgPicture.asset("assets/images/svg/verticaldots.svg"),
      ],
    );
  }
}
