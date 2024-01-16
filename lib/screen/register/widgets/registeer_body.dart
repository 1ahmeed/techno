import 'package:flutter/material.dart';
import 'package:task_techno/screen/register/widgets/section_go_to_login.dart';
import 'package:task_techno/screen/register/widgets/section_register_inputs.dart';

import 'header_of_screen_register.dart';

class RegisterBody extends  StatelessWidget {
  const RegisterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderOfScreenRegister(),
            const SizedBox(height: 28,),
            SectionRegisterInputs(),
            const SizedBox(
              height: 24,
            ),
            const GoToLogin()
          ],
        ),
      ),
    );
  }
}
