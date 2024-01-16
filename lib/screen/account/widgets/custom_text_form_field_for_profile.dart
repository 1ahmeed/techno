import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomTextFormFieldForProfile extends StatelessWidget {
  const CustomTextFormFieldForProfile({
    super.key,
    required this.controller,
    required this.keyboard,
    required this.validate,
    this.onSubmit,
    this.onchange,
    this.onTap,
    required this.label,
    this.isClickable = true,
     this.prefixIcon,
    this.suffixPressed,
    this.suffixIcon,
    this.isPassword = false,
    // this.colorBorder,
    this.colorIcon,
    this.hintText,
    this.hintStyle, this.labelStyle, this.maxLines,
  });

  final TextEditingController controller;
  final TextInputType keyboard;
  final String? Function(String?)? validate;
  final void Function(String)? onSubmit;
  final void Function(String)? onchange;
  final void Function()? onTap;
  final String label;
  final bool isClickable;

  final dynamic prefixIcon;
  final void Function()? suffixPressed;
  final dynamic suffixIcon;
  final bool isPassword;
  final String? hintText;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final int? maxLines;

  final Color? colorIcon;

  // Color? colorBorder;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboard,
      obscureText: isPassword,

      style: TextStyle(
        color: HexColor("#9098B1")
      ),
      enabled: isClickable,
      maxLines:maxLines ,
      onFieldSubmitted: onSubmit,
      onChanged: onchange,
      onTap: onTap,
      // cursorColor: Colors.teal,
      validator: validate,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        hintStyle: hintStyle,
        labelStyle: labelStyle,


        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: HexColor("#EBF0FF"))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1.5, color: HexColor("#40BFFF"))),
        labelText: label,
        // prefixIcon: Icon(
        //   prefixIcon,
        //   color: colorIcon,
        // ),
        // suffixIcon: IconButton(
        //   icon: Icon(suffixIcon),
        //   onPressed: suffixPressed,
        // ),
        border: const OutlineInputBorder(),
      ),
    );
  }
}
