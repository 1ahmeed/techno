import 'package:flutter/material.dart';
import 'package:task_techno/screen/forget_password_and_veerify/widgets/forget_password_inputs.dart';
import 'widgets/header_of_screen_forget_password.dart';

class ForgetPasswordScreen extends StatelessWidget {
   const ForgetPasswordScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ForgetPasswordScreenBody(),
      ),
    );
  }
}
class ForgetPasswordScreenBody extends StatelessWidget {
  const ForgetPasswordScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(width: double.infinity,),
            const HeaderOfScreenForgetPassword(),
            const SizedBox(height: 69,),
            ForgetPasswordInputs()

          ],
        ),
      ),
    );
  }
}
