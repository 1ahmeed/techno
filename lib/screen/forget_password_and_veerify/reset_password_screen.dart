import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/forget_password_and_veerify/widgets/header_of_screen_reset_password.dart';
import 'package:task_techno/screen/forget_password_and_veerify/widgets/reset_password_inputs.dart';
import 'package:task_techno/screen/forget_password_and_veerify/widgets/text_form_field_reset.dart';
import 'package:task_techno/screen/home/home_screen.dart';

import '../../core/utils/app_strings.dart';
import '../../core/widgets/custom_text_form_field.dart';

class ResetPasswordScreen extends  StatelessWidget {
   const ResetPasswordScreen({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return  const SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: ResetPasswordScreenBody()
      ),
    ));
  }
}
class ResetPasswordScreenBody  extends StatelessWidget {
  const ResetPasswordScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(width: double.infinity,),
          const HeaderOfScreenResetPassword(),
          const SizedBox(height: 103,),
          ResetPasswordInputs()
        ],
      ),
    );
  }
}

