import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_assets.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/home/home_screen.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

class ErrorResultWidget extends  StatelessWidget {
  const ErrorResultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
               Image.asset(AppAssets.notFoundResult,height: 300,width: 300),
              const SizedBox(height: 20,),
              Text("No Result Found ",style: TextStyle(
                color: HexColor("#223263"),
                fontWeight: FontWeight.w700,
                fontSize: 24
              ),),
              const SizedBox(height: 46,),
              CustomButton(function: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => const LayoutScreen(),));
              }, text: "back home",
              background: HexColor("#BA6400"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
