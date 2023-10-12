import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:messaging_app_ui/Modules/RecentChat/Modules/GroupChat/presentation/components/grid.dart';
import 'package:messaging_app_ui/core/components/profile_image.dart';
import 'package:messaging_app_ui/core/extensions/empty_space.dart';
import 'package:messaging_app_ui/core/extensions/theme_extension.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class MessageItem extends StatelessWidget {
  String messageContent;
  String messageType;
  List<String>? images;

  MessageItem(
      {required this.messageContent, required this.messageType, this.images});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: (messageType == "receiver"
            ? MainAxisAlignment.start
            : MainAxisAlignment.end),
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (messageType == "receiver") ...[
            ProfileImage(radius: 25),
          ],
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Align(
                  alignment: (messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    width: 200.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: (messageType == "receiver"
                          ? AppColors.pinchatColor
                          : AppColors.primarycolor),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (messageType == "receiver") ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mike Mazowski",
                                style: context.textTheme.headlineSmall,
                              ),
                              Text(
                                "admin",
                                style: context.textTheme.headlineLarge,
                              )
                            ],
                          ),
                        ],
                        Text(
                          messageContent,
                          style: context.textTheme.displayMedium?.copyWith(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: messageType != "receiver"
                                  ? Colors.white
                                  : null),
                        ),
                        15.sph,
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "16.04",
                              style: context.textTheme.headlineLarge?.copyWith(
                                  color: messageType != "receiver"
                                      ? Colors.white
                                      : null),
                              textAlign: TextAlign.end,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              15.sph,
              if (images!.isNotEmpty) ...[
                Container(
                  width: 200.w,
                  child: PhotoGrid(
                    imageUrls: images!,
                    onImageClicked: (i) => print('Image $i was clicked!'),
                    onExpandClicked: () => print('Expand Image was clicked'),
                    maxImages: 4,
                  ),
                )
              ]
            ],
          ),
          if (messageType != "receiver") ...[
            ProfileImage(radius: 25),
          ],
        ],
      ),
    );
  }
}
