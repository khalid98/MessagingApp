
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/Modules/RecentCalls/presentations/components/recent_call_item.dart';
import 'package:messaging_app_ui/core/components/AppBarComponent.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';


class RecentCallsScreen extends StatelessWidget {
  const RecentCallsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
        title: "Recent Calls",
        actions: [
          TextButton(
            onPressed: () {},
            child: SvgPicture.asset("assets/images/svg/searchIcon.svg"),
          ),
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: SvgPicture.asset("assets/images/svg/addcall.svg",fit: BoxFit.cover,),
        foregroundColor: AppColors.primarycolor,
        backgroundColor: AppColors.primarycolor ,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => 15.sph,
        itemCount: 8,
        itemBuilder: (context, index) {
        return RecentCallsItem(title: "Darlene Steward",subtitle: "July 08, 06.30 PM",);
      },),
    );
  }
}
