import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_assets.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';
import 'package:task_techno/screen/account/account_screen.dart';

class AlertDeleteScreen extends StatelessWidget {
  const AlertDeleteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: HexColor("#FB7181"),
                  child: Column(
                    children: [
                      SizedBox(height: 40,),
                      SvgPicture.asset(AppAssets.alert,width:30 ,height: 30),
                      SizedBox(height: 5,),
                      SvgPicture.asset(AppAssets.alert2)

                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Confirmation",
                style: TextStyle(
                    color: HexColor("#223263"),
                    fontWeight: FontWeight.w700,
                    fontSize: 24),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: 250,
                child: Text(
                  "Are you sure wanna delete address",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: HexColor("#9098B1")),
                ),
              ),
              const SizedBox(
                height: 52,
              ),
              CustomButton(
                function: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LayoutScreen(),
                      ));
                },
                text: "Delete",
                background: HexColor("#ED1C24"),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.5,
                    color: HexColor("#EBF0FF")
                  )
                ),
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen(),));
                }, child: Text("Cancel",style: TextStyle(

                  color: HexColor("#9098B1")
                ),)),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
