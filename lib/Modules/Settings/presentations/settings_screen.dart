import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/Modules/Settings/presentations/components/settings_item.dart';
import 'package:messaging_app_ui/core/components/AppBarComponent.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';

class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: "Settings", actions: [
        TextButton(
          onPressed: () {},
          child: SvgPicture.asset("assets/images/svg/searchIcon.svg"),
        ),
      ]),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            20.sph,
            Row(
              children: [
                Container(
                  height: 64.h,
                  width: 64.h,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset("assets/images/image/Image.png"),
                ),
                10.spw,
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Adina Nurrahma",
                        style: context.textTheme.displayMedium,
                      ),
                      10.sph,
                      Text(
                        "Trust your feelings , be a good human beings",
                        style: context.textTheme.displaySmall,
                      )
                    ],
                  ),
                )
              ],
            ),
            50.sph,
            SettingsItem(
              title: "Dark mode",
              imagePath: "assets/images/svg/darkmode.svg",
              isSwitch: true,
              value: darkMode,
              onChange: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
            10.sph,
            SettingsItem(
              title: "Account",
              imagePath: "assets/images/svg/account.svg",
              isSwitch: false,
            ),
            10.sph,
            SettingsItem(
              title: "Notification",
              imagePath: "assets/images/svg/notifications.svg",
              isSwitch: false,
            ),
            10.sph,
            SettingsItem(
              title: "Chat settings",
              imagePath: "assets/images/svg/chatsetting.svg",
              isSwitch: false,
            ),
            10.sph,
            SettingsItem(
              title: "Data and storage",
              imagePath: "assets/images/svg/dataandstorage.svg",
              isSwitch: false,
            ),
            10.sph,
            SettingsItem(
              title: "Privacy and security",
              imagePath: "assets/images/svg/Privacyandsecurity.svg",
              isSwitch: false,
            ),
            10.sph,
            SettingsItem(
              title: "About",
              imagePath: "assets/images/svg/about.svg",
              isSwitch: false,
            ),
          ],
        ),
      ),
    );
  }
}
