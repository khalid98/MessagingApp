import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:messaging_app_ui/Modules/RecentChat/components/chat_filter.dart';
import 'package:messaging_app_ui/Modules/RecentChat/components/recent_chats.dart';
import 'package:messaging_app_ui/Modules/RecentChat/data/chatfilter_cubit.dart';
import 'package:messaging_app_ui/core/components/AppBarComponent.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/routes/app_routes.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class RecentChatScreen extends StatefulWidget {
  const RecentChatScreen({Key? key}) : super(key: key);

  @override
  State<RecentChatScreen> createState() => _RecentChatScreenState();
}

class _RecentChatScreenState extends State<RecentChatScreen> {
  @override
  void initState() {
    super.initState();

  }
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(
          title: "Recent Chats",
          actions: [
            TextButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/images/svg/searchIcon.svg"),
            ),
          ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: SvgPicture.asset("assets/images/svg/addchats.svg",fit: BoxFit.cover,),
        foregroundColor: AppColors.primarycolor,
        backgroundColor: AppColors.primarycolor ,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Container(
                height: 35.h,
                child: BlocProvider(
                    create: (context) => ChatfilterCubit(),
                    child: ChatFilter())),
            26.sph,
            RecentChats()
          ],
        ),
      ),
    );
  }
}
