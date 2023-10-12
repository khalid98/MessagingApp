import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/core/components/profile_image.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class GroupDescription extends StatefulWidget {
  @override
  State<GroupDescription> createState() => _GroupDescriptionState();
}

class _GroupDescriptionState extends State<GroupDescription>
    with SingleTickerProviderStateMixin {
  bool activeSwitch = false;
  late TabController tabController;
  int selectedTap=0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: 0,
      length: 6,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Image.asset(
              "assets/images/image/groupdescription.png",
              fit: BoxFit.fitWidth,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    15.sph,
                    Row(
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
                        Text("Fullsnack Designers",
                            style: context.textTheme.displayMedium?.copyWith(
                                fontSize: 18.sp, fontWeight: FontWeight.w700)),
                        SvgPicture.asset("assets/images/svg/verticaldots.svg"),
                      ],
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/svg/warning.svg"),
                        10.spw,
                        Expanded(
                          child: Text(
                            "We are fullsnack designers, yes. From food, for food, by food!",
                            style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        )
                      ],
                    ),
                    15.sph,
                    Row(
                      children: [
                        SvgPicture.asset("assets/images/svg/notfy.svg"),
                        10.spw,
                        Expanded(
                          child: Text(
                            "Notifications",
                            style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        Switch.adaptive(
                            activeColor: AppColors.primarycolor,
                            inactiveTrackColor: Colors.grey,
                            activeTrackColor: AppColors.primarycolor,
                            value: activeSwitch,
                            onChanged: (value) {
                              setState(() {
                                activeSwitch = value;
                              });
                            })
                      ],
                    ),
                    15.sph,
                    Padding(
                        padding: const EdgeInsets.only(left: 0.0, right: 16),
                        child: Container(
                          width: ScreenUtil().screenWidth,
                          decoration: BoxDecoration(color: AppColors.cardbg),
                          child: TabBar(
                            onTap: (value){
                              setState(() {
                                selectedTap=value;
                              });
                            },
                              isScrollable: true,
                              controller: tabController,
                              indicator: UnderlineTabIndicator(
                                  borderSide: BorderSide(
                                      width: 3.0,
                                      color: Theme.of(context).primaryColor),
                                  insets: const EdgeInsets.symmetric(
                                      horizontal: 16.0)),
                              unselectedLabelStyle: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontSize: 14.sp,
                                  ),
                              labelPadding:
                                  EdgeInsets.symmetric(horizontal: 12.w),
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.copyWith(
                                    fontSize: 14.sp,
                                  ),
                              labelColor: Theme.of(context)
                                  .textTheme
                                  .displayMedium
                                  ?.color,
                              unselectedLabelColor: AppColors.fourthcolor,
                              tabs: [
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/svg/bookmarks.svg",color: selectedTap==0?AppColors.primarycolor:AppColors.dotdisablecolor,),
                                      5.spw,
                                      Text(
                                        "Bookmarks",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,
                                            color: selectedTap==0?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      )
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/svg/imagetap.svg",color: selectedTap==1?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      5.spw,
                                      Text(
                                        "Images",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,color: selectedTap==1?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      )
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/svg/video.svg",color: selectedTap==2?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      5.spw,
                                      Text(
                                        "Videos",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,color: selectedTap==2?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      )
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/svg/documents.svg",color: selectedTap==3?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      5.spw,
                                      Text(
                                        "Documents",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,color: selectedTap==3?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      )
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/svg/sharelink.svg",color: selectedTap==4?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      5.spw,
                                      Text(
                                        "Shared links",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,color: selectedTap==4?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      )
                                    ],
                                  ),
                                ),
                                Tab(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                          "assets/images/svg/audio.svg",color: selectedTap==5?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      5.spw,
                                      Text(
                                        "Audio files",
                                        style: context.textTheme.displayLarge
                                            ?.copyWith(
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w400,color: selectedTap==5?AppColors.primarycolor:AppColors.dotdisablecolor),
                                      )
                                    ],
                                  ),
                                ),
                              ]),
                        )),
                    15.sph,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "The next thing we will consider is how to create our own kitchen set in our office!..",
                            style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SvgPicture.asset("assets/images/svg/arrowright.svg"),
                      ],
                    ),
                    15.sph,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Pls keep a note that we will take a vacation on next weekend. Make sure you join the eve...",
                            style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SvgPicture.asset("assets/images/svg/arrowright.svg"),
                      ],
                    ),
                    15.sph,
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "The event will be held in London. Sunday, 26th of April 2020.",
                            style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w400),
                          ),
                        ),
                        SvgPicture.asset("assets/images/svg/arrowright.svg"),
                      ],
                    ),
                    15.sph,
                    Card(
                      elevation: 0.5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                "assets/images/svg/channelicon.svg"),
                            8.spw,
                            Text(
                              "4 Channels",
                              style: context.textTheme.displayMedium?.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            SvgPicture.asset("assets/images/svg/arrowdown.svg"),
                          ],
                        ),
                      ),
                    ),
                    15.sph,
                    Card(
                      elevation: 0.5,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 10.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                "assets/images/svg/peopleicon.svg"),
                            8.spw,
                            Text(
                              "12 Peoples",
                              style: context.textTheme.displayMedium?.copyWith(
                                  fontSize: 12.sp, fontWeight: FontWeight.w400),
                            ),
                            Spacer(),
                            SvgPicture.asset(
                                "assets/images/svg/addfriends.svg"),
                            10.spw,
                            SvgPicture.asset(
                              "assets/images/svg/searchIcon.svg",
                              color: AppColors.primarycolor,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: AppColors.DividerColor,
                    ),
                    for (int i = 0; i < 8; i++) ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProfileImage(
                            radius: 25.sp,
                          ),
                          18.spw,
                          Text(
                            "Adina Nurrahma",
                            style: context.textTheme.displayMedium?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w700),
                          ),
                          Spacer(),
                          Text(
                            "You",
                            style: context.textTheme.displaySmall?.copyWith(
                                fontSize: 14.sp, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      10.sph
                    ]
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
