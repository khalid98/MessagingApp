import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/Modules/RecentCalls/presentations/components/call_history_dialog.dart';
import 'package:messaging_app_ui/core/components/profile_image.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class RecentCallsItem extends StatelessWidget {
  RecentCallsItem({Key? key, required this.title, required this.subtitle})
      : super(key: key);
  String title;
  String subtitle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style:TextButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
      ),
      onPressed: (){
        showCallHistoryDialog(context);
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
                  style: context.textTheme.displayMedium?.copyWith(fontSize: 14.sp),
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
          SvgPicture.asset("assets/images/svg/callicon.svg"),

        ],
      ),
    );

  }
}
