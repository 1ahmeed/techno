import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/forget_password_and_veerify/forget_password_screen.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

import '../../../core/utils/app_strings.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_form_field.dart';

class SectionRegisterInputs extends  StatelessWidget {
   SectionRegisterInputs({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
              controller: nameController,
              keyboard: TextInputType.name,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.nameEmptyError;
                }
                return null;
              },
              label: AppStrings.fullName,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),

              hintText: "Samar3092",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.person_2_outlined),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              controller: emailController,
              keyboard: TextInputType.emailAddress,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.emailEmptyError;
                }
                return null;
              },
              label: AppStrings.email,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              hintText: "samar30@gmail.com",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.email_outlined),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              controller: phoneController,
              keyboard: TextInputType.phone,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.phoneEmptyError;
                }
                return null;
              },
              label: AppStrings.phone,
              labelStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              hintText: "+20 010 0000000",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: HexColor("#9098B1")
              ),
              prefixIcon: Icons.phone),
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              controller: passwordController,
              keyboard: TextInputType.visiblePassword,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.passwordEmptyError;
                }
                return null;
              },
              label: AppStrings.password,
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
          const SizedBox(
            height: 8,
          ),
          CustomTextFormField(
              controller: confirmPasswordController,
              keyboard: TextInputType.visiblePassword,
              validate: (value) {
                if (value!.isEmpty) {
                  return AppStrings.passwordEmptyError;
                }
                return null;
              },
              label: AppStrings.confirmPassword,
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
          const SizedBox(
            height: 27,
          ),
          CustomButton(
            background: HexColor("#ED1C24"),
            function: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LayoutScreen(),));
              }
            },
            text: AppStrings.signUp,
          ),
        ],
      ),
    );
  }
}
