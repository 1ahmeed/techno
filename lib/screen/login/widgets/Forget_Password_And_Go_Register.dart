import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/forget_password_and_veerify/forget_password_screen.dart';
import 'package:task_techno/screen/register/register_screen.dart';

import '../../../core/utils/app_strings.dart';

class SectionForgetPasswordAndGoRegister  extends StatelessWidget {
  const SectionForgetPasswordAndGoRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordScreen(),));
          },
          child: Text(
            AppStrings.forgetPassword,
            style: TextStyle(
              fontSize: 12,
                fontWeight: FontWeight.w700, color: HexColor("#ED1C24")),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.notHaveAccount,
              style: TextStyle(
                fontSize: 12,
                  color: HexColor(
                    "#9098B1",
                  ),
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              width: 2,
            ),
            InkWell(
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  RegisterScreen(),));
                },
                child: Text(
                  AppStrings.register,
                  style: TextStyle(
                    fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: HexColor("#ED1C24")),
                ))
          ],
        ),
      ],
    );
  }
}
