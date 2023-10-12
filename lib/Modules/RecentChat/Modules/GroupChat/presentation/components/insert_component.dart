import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/data/cubit/groupchat_cubit.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/data/cubit/groupchat_state.dart';
import 'package:messaging_app_ui/core/components/CustomField.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class InsertComponent extends StatelessWidget {
  InsertComponent({Key? key}) : super(key: key);
  List<String> channels = [
    "# General",
    "# Design Team",
    "# UX Writer",
    "# Projects"
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GroupchatCubit, GroupchatState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<GroupchatCubit>(context, listen: false);
        return Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextButton(
                onPressed: () {
                  cubit.showChannelview();
                },
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (cubit.showChannel == true) ...[
                      Text(
                        "Channels",
                        style: context.textTheme.displayMedium?.copyWith(
                            fontSize: 14.sp, fontWeight: FontWeight.w700),
                      ),
                    ] else ...[
                      Text(
                        "${cubit.selectedChannel}",
                        style: context.textTheme.displayLarge?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w700),
                      ),
                    ],
                    Spacer(),
                    SvgPicture.asset(cubit.showChannel == true
                        ? "assets/images/svg/arrowdown.svg"
                        : "assets/images/svg/arrowup.svg"),
                    SvgPicture.asset(
                      "assets/images/svg/verticaldots.svg",
                      color: AppColors.primarycolor,
                      width: 50.sp,
                    )
                  ],
                ),
              ),
            ),
            if (cubit.showChannel == true) ...[
              ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: channels.length,
                itemBuilder: (context, index) {
                  return TextButton(
                    onPressed: () {
                      cubit.selectChannel(channels[index], index);
                      cubit.showChannelview();
                    },
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 15.h),
                        backgroundColor: cubit.selectedIndex == index
                            ? AppColors.primarycolor.withOpacity(0.1)
                            : null),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        channels[index],
                        style: context.textTheme.displayMedium?.copyWith(
                            fontSize: 12.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                  );
                },
              ),
            ],
            Divider(
              color: AppColors.DividerColor,
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset("assets/images/svg/emotion.svg"),
                  Expanded(
                      child: CustomField(
                    hint: "Write a message...",
                    onsave: (value) {},
                    validator: (value) {},
                  )),
                  SvgPicture.asset("assets/images/svg/attachment.svg"),
                  15.spw,
                  SvgPicture.asset("assets/images/svg/recordaudio.svg"),
                ],
              ),
            ),
          ],
        );
      },
      listener: (context, state) {},
    );
  }
}
