import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/forget_password_and_veerify/widgets/text_form_field_reset.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_button.dart';
import '../../home/home_screen.dart';

class ResetPasswordInputs extends StatelessWidget {
   ResetPasswordInputs({Key? key}) : super(key: key);
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormFieldReset(
              controller: passwordController,
              keyboard: TextInputType.visiblePassword,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.passwordEmptyError;
                }
                return null;
              },
              label: AppStrings.password,
              suffixIcon: Icons.remove_red_eye_outlined,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              hintText: "•••••••••••••••••",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.lock_outline),
          const SizedBox(height: 22,),
          CustomTextFormFieldReset(
              controller: confirmPasswordController,
              keyboard: TextInputType.visiblePassword,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.passwordEmptyError;
                }
                return null;
              },
              label: "Confirm Password",
              suffixIcon: Icons.remove_red_eye_outlined,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              hintText: "•••••••••••••••••",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.lock_outline),
          const SizedBox(height: 36,),
          CustomButton(
              background: HexColor("#ED1C24"),
              function: (){
            if(formKey.currentState!.validate()){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LayoutScreen(),));
            }
          }, text: AppStrings.confirm)
        ],
      ),
    );
  }
}
