import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_strings.dart';

class CustomButton extends  StatelessWidget {
  const CustomButton({super.key,
    this.wide=double.infinity,
    this.background=Colors.deepPurple,
    required this.function,
    required this.text,
    this.height, this.border,

  });
  final double wide ;
  final double? height;
  final Color background ;
  final VoidCallback function;
  final String text;
  final BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
           color:background,
           // HexColor("#ED1C24"),
        border: border,
        borderRadius: BorderRadius.circular(5)
      ),

      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: AppStrings.fontFamily,
              fontWeight: FontWeight.w700,
              color: Colors.white, fontSize: 14 ),
        ),
      ),
    );
  }
}
