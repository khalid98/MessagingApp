

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/Modules/presentation/group_description.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/data/cubit/groupchat_cubit.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/group_chat_screen.dart';
import 'package:messaging_app_ui/presentation/layout/app_layout.dart';

class Routes {
  static const String AppLayOut = '/AppLayOut';
  static const String GroupChatScreen = '/GroupChatScreen';
  static const String GroupDescription = '/GroupDescription';


}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.AppLayOut:
        return MaterialPageRoute(builder: (context) {
          return AppLayOut();
        });
        case Routes.GroupChatScreen:
        return MaterialPageRoute(builder: (context) {
          return BlocProvider(create: (context) => GroupchatCubit(),
          child: GroupChatScreen(),);
        });
        case Routes.GroupDescription:
        return MaterialPageRoute(builder: (context) {
          return GroupDescription();
        });

    }
  }

}
