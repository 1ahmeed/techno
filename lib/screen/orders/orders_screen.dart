import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../core/utils/app_assets.dart';
import 'order_details.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                SvgPicture.asset(AppAssets.arrowLeft),
                Text(
                  "My Orderes",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: HexColor("#223263"),
                      fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            const Divider(),
            const SizedBox(
              height: 19,
            ),

            Expanded(
              child: ListView.separated(
                shrinkWrap: true,
                  itemBuilder: (context, index) =>  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder:  (context) => OrderDetails(),));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(width: 2, color: HexColor("#EBF0FF"))),
                      padding: const EdgeInsets.only(left: 16, top: 15, right: 12),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LQNSU346JK",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#223263")),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Order at E-comm : August 1, 2017",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#9098B1")),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            DottedLine(
                              lineThickness: 2,
                              dashColor: HexColor("#EBF0FF"),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Order Status",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#9098B1")),
                                ),
                                Spacer(),
                                Text(r"shipping",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: HexColor("#223263")))
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Items",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#9098B1")),
                                ),
                                Spacer(),
                                Text(r"1 Items purchased",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: HexColor("#223263")))
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#9098B1")),
                                ),
                                Spacer(),
                                Text(r"$299,43",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: HexColor("#000000")))
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  separatorBuilder: (context, index) => SizedBox(height: 16,),
                  itemCount: 2),
            ),
          ],
        ),
      ),
    ));
  }
}
