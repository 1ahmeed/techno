import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class HeaderOfScreenForgetPassword extends StatelessWidget {
  const HeaderOfScreenForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 42,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child: SvgPicture.asset(AppAssets.logo,width:100 ,height: 100,)
          // Image.asset(AppAssets.logo, scale: 1.2),
        ),
        const SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(AppStrings.forgetPassword,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor("#223263"),
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  letterSpacing: .5)),
        ),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(AppStrings.forgetPasswordMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: HexColor("#9098B1"),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  letterSpacing: .5)),
        ),
      ],
    );
  }
}
