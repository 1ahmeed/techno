import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/utils/app_assets.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

class SuccessCartScreen extends StatelessWidget {
  const SuccessCartScreen({Key? key}) : super(key: key);

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
                  radius: 40,
                  backgroundColor: HexColor("#1B8900"),
                  child: SvgPicture.asset(AppAssets.correct,width: 30,height: 30,)
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Success",
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
                  "thank you for shopping From MEGA Store",
                  style: TextStyle(
                      fontSize: 16,
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
                text: "Back to Home",
                background: HexColor("#50555C"),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
