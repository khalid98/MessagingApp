import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/Modules/RecentChat/data/chatfilter_cubit.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class ChatFilter extends StatelessWidget {
  ChatFilter({Key? key}) : super(key: key);
  List<String> filter = ["All chats", "Personal", "Work", "Groups"];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatfilterCubit, ChatfilterState>(
      builder: (context, state) {
        final cubit = BlocProvider.of<ChatfilterCubit>(context, listen: false);
        return ListView.separated(
          separatorBuilder: (context, index) => 10.spw,
          scrollDirection: Axis.horizontal,
          itemCount: filter.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                cubit.ChangeIndex(index);
              },
              child: Card(
                elevation: 0.2,
                color: cubit.selectedIndex == index
                    ? AppColors.primarycolor
                    : null,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Center(
                    child: Text(
                      filter[index],
                      style: context.textTheme.displayMedium?.copyWith(
                          fontSize: 12.sp, fontWeight: FontWeight.w400,color: cubit.selectedIndex == index
                          ? Colors.white
                          : null),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      listener: (context, state) {},
    );
  }
}
