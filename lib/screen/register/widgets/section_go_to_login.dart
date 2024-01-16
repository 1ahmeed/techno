import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/utils/app_strings.dart';
import '../../login/login_screen.dart';

class GoToLogin  extends StatelessWidget {
  const GoToLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.haveAccount,
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
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  const LoginScreen(),));
                },
                child: Text(
                  AppStrings.signIn,
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
