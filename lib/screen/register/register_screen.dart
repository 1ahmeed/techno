import 'package:flutter/material.dart';
import 'package:task_techno/screen/register/widgets/registeer_body.dart';


class RegisterScreen extends StatelessWidget {
   const RegisterScreen({Key? key}) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: RegisterBody(),
      ),
    );
  }
}
