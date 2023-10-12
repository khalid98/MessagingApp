import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/Modules/RecentChat/presentation/pin_chats.dart';
import 'package:messaging_app_ui/Modules/RecentChat/presentation/recent_chat_screen.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({Key? key}) : super(key: key);

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  SheetController sheetController =SheetController();
  @override
  void initState() {
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return SlidingSheet(
      controller: sheetController,
      elevation: 8,
      cornerRadius: 16,
      snapSpec:  const SnapSpec(
        snap: true,
        initialSnap: double.infinity,
        snappings: [350.0, 300.0, double.infinity],
        positioning: SnapPositioning.pixelOffset,

      ),
      body: const PinChats(),
      builder: (context, state) {
        return  SizedBox(
            height: ScreenUtil().screenHeight,
            child: const RecentChatScreen());
      },
    );
  }
}
