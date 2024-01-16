import 'package:flutter/material.dart';
import 'package:task_techno/screen/login/widgets/Forget_Password_And_Go_Register.dart';
import 'package:task_techno/screen/login/widgets/section_login_with_social.dart';
import 'package:task_techno/screen/login/widgets/sections_inputs.dart';
import 'header_of_screen_login.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 42,
              ),
              const HeaderOfScreenLogin(),
              const SizedBox(height: 28,),
              SectionInputsOfLogin(),
              const SizedBox(
                height: 20,
              ),
              const SectionLoginWithSocial(),
              const SizedBox(
                height: 16,
              ),
              const SectionForgetPasswordAndGoRegister()

            ],
          ),
        ),
      ),
    );
  }
}


