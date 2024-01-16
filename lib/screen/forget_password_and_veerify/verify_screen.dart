import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_strings.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/forget_password_and_veerify/reset_password_screen.dart';
import 'package:task_techno/screen/forget_password_and_veerify/widgets/header_of_screen_verify_code.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: VerifyScreenBody(),
      ),
    );
  }
}
class VerifyScreenBody  extends StatelessWidget {
  const VerifyScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            const HeaderOfScreenVerifyCode(),
            const SizedBox(height: 148,),
            CustomButton(
                background: HexColor("#ED1C24"),
                function: (){
              Navigator.push(context, MaterialPageRoute(builder:  (context) => const ResetPasswordScreen()));
            }, text: AppStrings.verify)

          ],
        ),
      ),
    );
  }
}

