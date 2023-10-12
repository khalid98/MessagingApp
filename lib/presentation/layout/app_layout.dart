
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/Modules/RecentCalls/presentations/recent_calls_screen.dart';
import 'package:messaging_app_ui/Modules/RecentChat/presentation/chats_screen.dart';
import 'package:messaging_app_ui/Modules/RecentChat/presentation/recent_chat_screen.dart';
import 'package:messaging_app_ui/Modules/Settings/presentations/settings_screen.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';
import 'package:messaging_app_ui/presentation/components/bottomNavigationcomponent.dart';
import 'package:messaging_app_ui/presentation/cubit/app_layout_cubit.dart';

class AppLayOut extends StatefulWidget {
  const AppLayOut({Key? key}) : super(key: key);

  @override
  State<AppLayOut> createState() => _AppLayOutState();
}

class _AppLayOutState extends State<AppLayOut> {
  static   final List<Widget> _pages = [
    const ChatsScreen(),
    const RecentChatScreen(),
    const RecentCallsScreen(),
     SettingsScreen(),
  ];
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);

  }

  @override
  Widget build(BuildContext context) {
    final state = BlocProvider.of<AppLayoutCubit>(context,listen: true);
    return WillPopScope(
      onWillPop: () async {
        if (state.page == 0) return true;
        _pageController.jumpTo(0);
        return false;
      },
      child: Scaffold(
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey,
                blurRadius: 3,
              ),
            ],
          ),
          child: BottomAppBar(
            clipBehavior: Clip.antiAlias,
            notchMargin: 0,
            elevation: 0,
            child: Container(
              height: 80.h,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: bottomNavigationcomponent(
                          ontap: () {
                            _pageController.jumpToPage(0);
                          },
                          SvgPath: "assets/images/svg/chats.svg",
                          SvgColor: (state.page != 0)
                              ? AppColors.bottom_nav_disable
                              : null,
                        )),
                    Expanded(
                        child: bottomNavigationcomponent(
                          ontap: () {
                            _pageController.jumpToPage(1);
                          },
                          SvgPath: "assets/images/svg/recentchats.svg",
                          SvgColor: (state.page != 1)
                              ? AppColors.bottom_nav_disable
                              : null,
                        )),
                    Expanded(
                        child: bottomNavigationcomponent(
                          ontap: () {
                            _pageController.jumpToPage(2);
                          },
                          SvgPath: "assets/images/svg/recentcall.svg",
                          SvgColor: (state.page != 2)
                              ? AppColors.bottom_nav_disable
                              : null,
                        )),
                    Expanded(
                        child: bottomNavigationcomponent(
                          ontap: () {
                            _pageController.jumpToPage(3);
                          },
                          SvgPath: "assets/images/svg/profile.svg",
                          SvgColor: (state.page != 3)
                              ? AppColors.bottom_nav_disable
                              : null,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: PageView(
          controller: _pageController,
          children: _pages,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            state.changeselectedpage(value);
          },
        ),
      ),
    );
  }


}
