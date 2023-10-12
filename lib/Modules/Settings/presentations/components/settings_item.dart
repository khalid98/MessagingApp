import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class SettingsItem extends StatelessWidget {
  SettingsItem(
      {Key? key, required this.title, required this.imagePath, this.isSwitch = false, this.onChange,this.value})
      : super(key: key);
  String title;
  bool? value;
  String imagePath;
  bool? isSwitch;
  Function(bool)?onChange;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: context.textTheme.displaySmall?.copyWith(
          fontSize: 14.sp
      ),),
      leading: SvgPicture.asset(imagePath),
      trailing: isSwitch == true ? Switch.adaptive(
        activeColor: AppColors.primarycolor,
        inactiveTrackColor: Colors.grey,
        activeTrackColor: AppColors.primarycolor,
          value: value!, onChanged: onChange,
      ) :SvgPicture.asset("assets/images/svg/arrowright.svg"),


    );
  }
}
