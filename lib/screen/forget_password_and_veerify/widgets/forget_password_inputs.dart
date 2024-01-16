import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/forget_password_and_veerify/verify_screen.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class ForgetPasswordInputs extends StatelessWidget {
   ForgetPasswordInputs({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
              controller: emailController,
              keyboard: TextInputType.emailAddress,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.emailEmptyError;
                }
                else if (!value.contains("@") || !value.contains(".")) {
                  return AppStrings.emailNotValid;
                }else{
                  return null;
                }

              },
              hintText: "rex4dom@gmail.com",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,color: HexColor("#9098B1")
              ),

              label: AppStrings.email,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.email_outlined),
          const SizedBox(height: 31,),
          CustomButton(
            wide: 340,
            height: 60,
            background:HexColor("#ED1C24"),
            function: () {
              if (formKey.currentState!.validate()) {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const VerifyScreen(),));
              }
            },
            text: AppStrings.send,
          ),
        ],
      ),
    );
  }
}
