
import 'package:flutter/material.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/data/models/message.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/components/message_item.dart';

class MessagesScreen extends StatelessWidget {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hello guys, we have discussed about post-corona vacation plan and our decision is to go to Bali. We will have a very big party after this corona ends! These are some images about our destination", messageType: "receiver",images: [
      "assets/images/image/Rectangle.jpg",
      "assets/images/image/Rectangle.jpg",
      "assets/images/image/Rectangle.jpg",
      "assets/images/image/Rectangle.jpg",
    ]),
    ChatMessage(messageContent: "That’s very nice place! you guys made a very good decision. Can’t wait to go on vacation!", messageType: "sender",images: []),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 10,bottom: 10),
      itemBuilder: (context, index){
        return MessageItem(messageContent: messages[index].messageContent,messageType: messages[index].messageType,images: messages[index].images,);
      },
    );
  }
}
