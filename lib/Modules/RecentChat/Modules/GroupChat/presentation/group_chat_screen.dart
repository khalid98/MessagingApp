import 'package:flutter/material.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/components/chat_title.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/components/insert_component.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/components/typing.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/messages_screen.dart';

class GroupChatScreen extends StatelessWidget {
  GroupChatScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ChatTitle(),
            Expanded(child: MessagesScreen()),
            Typing(),
            InsertComponent()


          ],
        ),
      ),
    );
  }
}
