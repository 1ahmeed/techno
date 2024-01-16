import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_strings.dart';
import 'package:task_techno/screen/home/home_screen.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class SectionInputsOfLogin extends StatelessWidget {
  SectionInputsOfLogin({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
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
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              controller: passwordController,
              maxLines: 1,
              keyboard: TextInputType.visiblePassword,
              suffixPressed: () {
              },
              onSubmit: (value) {
                if (formKey.currentState!.validate()) {
                }
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return AppStrings.passwordEmptyError;
                }
                if (value.length < 6) {
                  return AppStrings.passwordNotValid;
                }
                return null;

              },
              label: AppStrings.password,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,color: HexColor("#9098B1")
              ),
              hintText: "•••••••••••••••••" ,
              hintStyle: const TextStyle(
                fontSize: 12
              ),
              isPassword: true,
              prefixIcon: Icons.lock_outline),
          const SizedBox(
            height: 18,
          ),
          CustomButton(
            background: HexColor("#ED1C24"),
            border: Border.all(
              width: 1
            ),
            function: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  LayoutScreen(),));
              }
            },
            text: AppStrings.signIn,
          ),
        ],
      ),
    );
  }
}
