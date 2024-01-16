import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class SectionLoginWithSocial extends StatelessWidget {
  const SectionLoginWithSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Divider(
              indent:1 ,
              endIndent: 20,
              thickness: 2,
              color: HexColor("#EBF0FF"),
            )),
            const Text(AppStrings.or,style: TextStyle(
                fontFamily: AppStrings.fontFamily,
                color:Colors.black38 ,
                fontWeight: FontWeight.w700
            )),
            Expanded(child: Divider(
                thickness: 2,
                indent:20 ,
                endIndent: 1,
                color: HexColor("#EBF0FF")
            ))
          ],
        ),
        SizedBox(height: 16,),
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
               color:HexColor("#EBF0FF"),
              width: 1
            )
          ),
          child: Row(
            children: [
              SvgPicture.asset(AppAssets.google),
              const SizedBox(width:100 ,),
              Text("Login With Google",style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: HexColor("#9098B1")
              ),)
            ],
          ),
        ),
        SizedBox(height: 8,),
        Container(
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(
                  color:HexColor("#EBF0FF"),
                  width: 1
              )
          ),
          child: Row(
            children: [
              SvgPicture.asset(AppAssets.facebook),
              const SizedBox(width:100 ,),
              Text("Login With FaceBook",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#9098B1")
              ),)
            ],
          ),
        ),
      ],
    );
  }
}
