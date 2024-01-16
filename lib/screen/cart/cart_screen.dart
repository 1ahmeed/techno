import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/cart/ship_to_screen.dart';
import 'package:task_techno/screen/cart/widgets/build_cart_item.dart';

import '../../core/item_model.dart';
import '../../core/utils/app_assets.dart';

class CartScreen extends StatelessWidget {
  CartScreen({Key? key}) : super(key: key);
  final messageController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final List<ItemModel> boarding = [
    ItemModel(
        image: AppAssets.item1Png,
        title: "Nike Air Zoom Pegasus 36 Miami",
        discount: r"$534,33",
        percent: "24% Off",
        salary: r"$299,43"),
    ItemModel(
        image: AppAssets.item2Png,
        title: "Nike Air Zoom Pegasus 36 Miami",
        discount: r"$534,33",
        percent: "24% Off",
        salary: r"$299,43"),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Your Cart ",
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
                height: 10,
              ),
              ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(
                  height: 16,
                ),
                itemCount: boarding.length,
                itemBuilder: (context, index) => BuildCartItem(
                  cart: boarding[index],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Form(
                key: formKey,
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: HexColor("#EBF0FF"), width: 1),
                    borderRadius: const BorderRadius.all(Radius.circular(7)),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "* your coupon is not correct";
                            } else {
                              return null;
                            }
                          },
                          controller: messageController,
                          decoration:  InputDecoration(
                            hintText: 'Enter Cupon Code',


                            hintStyle: TextStyle(
                              color: HexColor("#9098B1"),
                              fontSize:12 ,
                              fontWeight:FontWeight.w400
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      )),
                      Container(
                        height: 70,
                        width: 90,
                        color: HexColor("#BA6400"),
                        child: MaterialButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {}
                              // messageController.clear();
                            },
                            minWidth: 1,
                            child: Text(
                              "Apply",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#FFFFFF"),
                                  fontSize: 12),
                            )),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
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
                            "Items (3)",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#9098B1")),
                          ),
                          const Spacer(),
                          Text(r"$598.86",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#223263")))
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "Shiping",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#9098B1")),
                          ),
                          const Spacer(),
                          Text(r"$40.00",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#223263")))
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            "import charges",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: HexColor("#9098B1")),
                          ),
                          const Spacer(),
                          Text(r"$128.00",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: HexColor("#223263")))
                        ],
                      ),
                      const SizedBox(height: 12,),
                      DottedLine(
                        lineThickness: 2,
                        dashColor: HexColor("#EBF0FF"),
                      ),
                      const SizedBox(height: 12,),
                      Row(
                        children: [
                          Text(
                            "Total price",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: HexColor("#223263")),
                          ),
                          const Spacer(),
                          Text(r"$766.86",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  color: HexColor("#40BFFF")))
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12,),
              CustomButton(function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ShipToScreen(),));
                }, text: "check out",background: HexColor("#BA6400"),)

            ],
          ),
        ),
      ),
    ));
  }
}
