
import 'package:flutter/material.dart';
import 'package:messaging_app_ui/Modules/RecentChat/components/chat_item.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => 15.sph,
        itemCount: 8,
        itemBuilder: (context, index) {
          return ChatItem(title: "Darlene Steward",subtitle: "Pls take a look at the images.",index: index,);
        },),
    );
  }
}
