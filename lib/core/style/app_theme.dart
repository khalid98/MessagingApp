import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class AppStyle {
  static get darkTheme => ThemeData(
      hintColor: Color(0xffBBBBBB),
      pageTransitionsTheme: const PageTransitionsTheme(builders: {
        TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      }),
      scaffoldBackgroundColor: AppColors.ScaffoldColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      brightness: Brightness.dark,
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: AppColors.primarycolor,
        selectionColor: AppColors.primarycolor,
        selectionHandleColor: AppColors.primarycolor,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
            color: Color(0xffBBBBBB),
            fontSize: 14.sp,
            fontWeight: FontWeight.normal),
      ),
      appBarTheme: AppBarTheme(
          systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarIconBrightness: Brightness.dark,
              statusBarColor: Colors.transparent),
          titleTextStyle: GoogleFonts.plusJakartaSans(
              color: AppColors.secondarycolor,
              fontSize: 20.sp,
              fontWeight: FontWeight.w700),
          iconTheme: IconThemeData(color: Colors.white, size: 20.sp)),
      primaryColor: AppColors.primarycolor,
      fontFamily: GoogleFonts.plusJakartaSans().fontFamily,
      textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.primarycolor),
          displayMedium: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.secondarycolor),
          displaySmall: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.thirdcolor),
          headlineMedium: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.fourthcolor),
          headlineSmall: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              color: AppColors.textcolor,
          ),
        headlineLarge: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.textcolor2,
        ),
        titleMedium: TextStyle(color: Colors.black), // default TextField input style

      ),
      cardColor: AppColors.cardbg,
      cardTheme: const CardTheme(margin: EdgeInsets.zero),
      bottomAppBarColor: Colors.white
      // buttonTheme: ButtonThemeData(buttonColor: Color(0xff2D6BCB)),
      );
}
