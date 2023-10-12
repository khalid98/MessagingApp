import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/core/components/profile_image.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

void showCallHistoryDialog(BuildContext context) {
  showDialog(
    useSafeArea: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        backgroundColor: Colors.white,
        titlePadding: EdgeInsets.only(left: 15.w,top: 5.h),
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
        title: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                "Call history",
                style:
                context.textTheme.displaySmall?.copyWith(fontSize: 12.sp),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 5.0.h),
                child: Text(
                  "Darlene Steward",
                  style: context.textTheme.displayMedium
                      ?.copyWith(fontSize: 14.sp, fontWeight: FontWeight.w700),
                ),
              ),
              leading: ProfileImage(),
              trailing: SvgPicture.asset("assets/images/svg/verticaldots.svg"),
            ),
            Divider(
              color: AppColors.DividerColor,
            )
          ],
        ),
        content: Container(
            height: 200.h,
            width: ScreenUtil().screenWidth *0.6,
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => 10.sph,
                itemCount: 3,
                itemBuilder: (context, index) =>
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset("assets/images/svg/incommingcall.svg"),
                    15.spw,
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "03.30 AM",
                            style:
                            context.textTheme.displayMedium?.copyWith(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.0.h),
                            child: Text(
                              "33 mins 12.3 MB",
                              style: context.textTheme.displaySmall?.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w400),
                            ),),
                        ],
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset("assets/images/svg/callicon.svg"),
                  ],
                ), )
        ),
        //content: Text("Launching this missile will destroy the entire universe. Is this what you intended to do?"),
      );
    },
  );
}
