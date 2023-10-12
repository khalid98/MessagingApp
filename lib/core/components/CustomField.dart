import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messaging_app_ui/core/style/app_color.dart';

class CustomField extends StatelessWidget {
  String? title;
  TextStyle? textStyle;
  String? hint;
  Function(String?) validator;
  Function(String?) onsave;
  Function(String?)? onsubmit;
  Function(String?)? onchange;
  bool? obsecure;
  bool? isrequired;
  Widget? suffix;
  Widget? prefix;
  Color? Filedcolor;
  TextInputType? keyboardtype;
  TextEditingController? controller;
  int? maxline;
  String? intailvalue;
  OutlineInputBorder? outlineInputBorder;
  bool? enabled;
  Key? key;
  List<TextInputFormatter>?textInputFormatter;
  TextStyle ?bodystyle;
  TextStyle ?hintStyle;
  CustomField(
      {this.bodystyle,this.outlineInputBorder,
        this.key,
      this.onsubmit,
      this.onchange,
      this.Filedcolor,
      this.prefix,
      this.textStyle,
      this.maxline,
      this.title,
        this.textInputFormatter,
      required this.validator,
      required this.onsave,
      this.obsecure = false,
      this.enabled = true,
      this.suffix,
      this.controller,
      this.hint,
      this.keyboardtype,
      this.isrequired = false,
      this.intailvalue,this.hintStyle});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key:key,
      enabled: enabled,
      controller: controller,
      initialValue: intailvalue,
      maxLines: maxline ?? 1,
      minLines: maxline ?? 1,
      obscureText: obsecure!,
      style: bodystyle,
      onChanged: onchange,
      inputFormatters: textInputFormatter,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onSaved: (newValue) => onsave(newValue),
      onFieldSubmitted: onsubmit,
      keyboardType: keyboardtype ?? TextInputType.text,
      validator: (String? value) => validator(value),
      decoration: InputDecoration(
          prefixIcon: prefix != null ? prefix : null,
          suffixIcon: suffix != null ? suffix : null,
          prefixIconConstraints: BoxConstraints(
              minWidth: prefix != null ? 40.sp : 0,
              minHeight: prefix != null ? 40 : 0),
          suffixIconConstraints: BoxConstraints(
              minWidth: suffix != null ? 40.sp : 0,
              minHeight: suffix != null ? 40 : 0),
          errorMaxLines: 2,
          hintStyle: hintStyle,
          focusedBorder: outlineInputBorder ??
              OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(color: Colors.transparent),
              ),
          enabledBorder: outlineInputBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                  )),
          border: outlineInputBorder ??
              OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: new BorderSide(color: Colors.transparent)),
          hintText: hint,
          // hintStyle:  hintstyle,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 13, vertical: 13.h),
          isDense: true),
    );
  }
}
