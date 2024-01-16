import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../core/widgets/custom_button.dart';

class BuildAddressItem extends StatelessWidget {
  const BuildAddressItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 2, color: HexColor("#EBF0FF"))),
      padding: const EdgeInsets.only(left: 16, top: 15, ),
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
                  width: 300,
                  child: Text(
                    "3711 Spring Hill Rd undefined Tallahassee, Nevada 52874 United States",
                    style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width*.04,
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
    );
  }
}
