import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/core/components/profile_image.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/routes/app_routes.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class ChatItem extends StatelessWidget {
  ChatItem({Key? key, required this.title, required this.subtitle, this.index})
      : super(key: key);
  String title;
  String subtitle;
  int? index;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor:
            index == 0 ? AppColors.primarycolor.withOpacity(0.1) : null,
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, Routes.GroupChatScreen);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ProfileImage(),
          18.spw,
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: context.textTheme.displayMedium
                      ?.copyWith(fontSize: 14.sp),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                    subtitle,
                    style: context.textTheme.displaySmall?.copyWith(
                        fontSize: 12.sp, fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text("18.31", style: context.textTheme.headlineMedium),
              if (index == 0) ...[
                10.sph,
                Container(
                  height: 24.h,
                  width: 24.h,
                  decoration: BoxDecoration(
                      color: AppColors.primarycolor, shape: BoxShape.circle),
                  child: Center(
                      child: Text(
                    "5",
                    style:
                        context.textTheme.titleLarge?.copyWith(fontSize: 12.sp),
                  )),
                )
              ]
            ],
          ),
        ],
      ),
    );
  }
}
