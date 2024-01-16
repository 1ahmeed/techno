import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class HeaderOfScreenLogin extends StatelessWidget {
  const HeaderOfScreenLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 13.0),
          child:SvgPicture.asset(AppAssets.logo,height:100 ,width:100 ,)
          // Image.asset(AppAssets.logo, scale: 1.2),
        ),
        const SizedBox(
          height: 28,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Text(AppStrings.welcomeMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
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
          child: Text(AppStrings.signForContinueMessage,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: AppStrings.fontFamily,
                  color: HexColor("#9098B1"),
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  letterSpacing: .5)),
        ),
      ],
    );
  }
}
