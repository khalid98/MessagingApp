import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/core/components/profile_image.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class PinItem extends StatelessWidget {
   PinItem({Key? key,this.backgroundColor,this.isReply,this.showDot}) : super(key: key);
  Color? backgroundColor;
  bool? isReply;
  bool ?showDot;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 0,
          color: backgroundColor,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    ProfileImage(radius: 20),
                    16.spw,
                    Expanded(
                      child: Text("Mike Wazowski",style: context.textTheme.displayMedium?.copyWith(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),),
                    )
                  ],
                ),
                10.sph,
                Row(
                  children: [
                    if(isReply==true)...[
                      SvgPicture.asset("assets/images/svg/replayicon.svg"),
                      5.spw,
                    ],
                    Text("Pls take a look at the...",style: context.textTheme.displaySmall?.copyWith(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                        color: showDot==true?AppColors.secondarycolor:null
                    ),),
                  ],
                )
              ],
            ),
          ),
        ),
        if(showDot==true)...[
          Positioned(
            top: 12,
            right: 12,
            child: Container(
              height: 12.h,
              width: 12.h,
              decoration: BoxDecoration(
                  shape:BoxShape.circle,
                  color: AppColors.primarycolor
              ),
            ),
          )
        ]
      ],
    );
  }
}
