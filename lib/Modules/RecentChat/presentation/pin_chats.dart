import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/Modules/RecentChat/components/pin_item.dart';
import 'package:messaging_app_ui/core/components/AppBarComponent.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class PinChats extends StatelessWidget {
  const PinChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: "Pinned Chats", actions: [
        TextButton(
            onPressed: () {},
            child: Image.asset("assets/images/image/Image.png")),
      ]),
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 100.h,
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        children: [
          PinItem(backgroundColor: AppColors.pinchatColor,isReply: true),
          PinItem(backgroundColor: AppColors.primarycolor.withOpacity(0.1),showDot: true,),
          PinItem(backgroundColor: AppColors.pinchatColor,),
          PinItem(backgroundColor: AppColors.pinchatColor,isReply: true),
        ],
      ),
    );
  }
}
