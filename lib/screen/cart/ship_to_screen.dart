import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_text_button.dart';
import 'package:task_techno/screen/cart/widgets/success_cart_screen.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/custom_button.dart';

class ShipToScreen extends StatelessWidget {
  const ShipToScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(AppAssets.arrowLeft),
                Text(
                  "Ship to ",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: HexColor("#223263"),
                      fontSize: 16),
                ),
                const Spacer(),
                IconButton(onPressed: () {},
                    icon: Icon(Icons.add, color: HexColor("#40BFFF"),))
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              height: 1,
              color: HexColor("#EBF0FF"),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) =>  Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 2, color: HexColor("#EBF0FF"))),
                padding: const EdgeInsets.only(left: 16, top: 15, right: 12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Priscekila",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: HexColor("#223263")),
                          ),
                        ],
                      ),

                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width:MediaQuery.of(context).size.width* .800,
                            child: Text(
                              "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#9098B1")),
                            ),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Text(
                            "+99 1234567890",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#9098B1")),
                          ),

                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),


                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: CustomButton(
                                function: () {},
                                background: HexColor("#50555C"),
                                text: "Edit"),
                          ),
                          const SizedBox(width: 15,),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.delete_outline, color: HexColor("#9098B1"),
                            ),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              ),
                  separatorBuilder: (context, index) => const SizedBox(height: 10,),
                  itemCount: 2),
            ),
            CustomButton(function: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessCartScreen(),));
            },
              text: "Next",background: HexColor("#BA6400"),)
          ],
        ),
      ),
    ));
  }
}
