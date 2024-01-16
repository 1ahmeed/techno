import 'package:dotted_line/dotted_line.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/orders/widgets/build_product_order_widget.dart';

import '../../core/item_model.dart';
import '../../core/utils/app_assets.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  int activeStep = 0;
  int activeStep2 = 0;
  int reachedStep = 0;
  int upperBound = 5;
  double progress = 0.2;
  Set<int> reachedSteps = <int>{0, 2, 4, 5};

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
  void increaseProgress() {
    if (progress < 1) {
      setState(() => progress += 0.2);
    } else {
      setState(() => progress = 0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Order Details",
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  EasyStepper(
                      activeStep: activeStep,
                      lineStyle: LineStyle(
                        lineLength: 50,
                        lineThickness: 3,
                        activeLineColor: HexColor("#40BFFF"),
                        unreachedLineColor: HexColor("#EBF0FF"),
                        unreachedLineType: LineType.normal,
                      ),
                      activeStepBorderType: BorderType.normal,
                      unreachedStepBorderType: BorderType.normal,
                      stepShape: StepShape.circle,
                      activeStepBackgroundColor: HexColor("#087DA9"),
                      unreachedStepBackgroundColor: HexColor("#EBF0FF"),
                      showStepBorder: false,
                      stepBorderRadius: 15,
                      internalPadding: 0,
                      padding: const EdgeInsets.all(0),
                      stepRadius: 24,
                      finishedStepBorderColor: Colors.deepOrange,
                      finishedStepTextColor: Colors.deepOrange,
                      finishedStepBackgroundColor: Colors.deepOrange,
                      activeStepIconColor: Colors.deepOrange,
                      showLoadingAnimation: false,
                      steps: [
                        EasyStep(
                          customStep: ClipRRect(
                            child: Opacity(
                              opacity: activeStep >= 0 ? 1 : 0.3,
                              child: SvgPicture.asset(
                                AppAssets.correct,
                                width: 13,
                                height: 13,
                              ),
                            ),
                          ),
                          customTitle: Text(
                            'Packing',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor("#9098B1"),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        EasyStep(
                          customStep: ClipRRect(
                            child: Opacity(
                              opacity: activeStep >= 0 ? 1 : 0.3,
                              child: SvgPicture.asset(
                                AppAssets.correct,
                                width: 13,
                                height: 13,
                              ),
                            ),
                          ),
                          customTitle: Text(
                            'Shipping',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor("#9098B1"),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        EasyStep(
                          customStep: ClipRRect(
                            child: Opacity(
                              opacity: activeStep >= 0 ? 1 : 0.3,
                              child: SvgPicture.asset(
                                AppAssets.correct,
                                width: 13,
                                height: 13,
                              ),
                            ),
                          ),
                          customTitle: Text(
                            'Shipping',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor("#9098B1"),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        EasyStep(
                          customStep: ClipRRect(
                            child: Opacity(
                              opacity: activeStep >= 0 ? 1 : 0.3,
                              child: SvgPicture.asset(
                                AppAssets.correct,
                                width: 13,
                                height: 13,
                              ),
                            ),
                          ),
                          customTitle: Text(
                            'Shipping',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: HexColor("#9098B1"),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ]),
                  SizedBox(height: 24,),
                  Text("Products",style: TextStyle(
                    color: HexColor("#223263"),
                    fontSize: 14,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 12,),
                  ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => const SizedBox(
                      height: 16,
                    ),
                    itemCount: boarding.length,
                    itemBuilder: (context, index) => BuildProductOrderWidget(
                      cart: boarding[index],
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text("Shipping Details",style: TextStyle(
                      color: HexColor("#223263"),
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 12,),
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
                                "Date Shipping",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#9098B1")),
                              ),
                              Spacer(),
                              Text(r"January 16, 2020",
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
                                "Shipping",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#9098B1")),
                              ),
                              Spacer(),
                              Text(r"POS Reggular",
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
                                "No. Resi",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#9098B1")),
                              ),
                              Spacer(),
                              Text(r"000192848573",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#223263"))
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Row(
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#9098B1")),
                              ),
                              Spacer(),
                              Text(r"2727 New  Owerri, Owerri, Imo State 78410",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#223263"))
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24,),
                  Text("Payment Details",style: TextStyle(
                      color: HexColor("#223263"),
                      fontSize: 14,
                      fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 12,),
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
                              Spacer(),
                              Text(r"$598.86",
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
                                "Shiping",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#9098B1")),
                              ),
                              Spacer(),
                              Text(r"$40.00",
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
                                "import charges",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#9098B1")),
                              ),
                              Spacer(),
                              Text(r"$128.00",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: HexColor("#223263")))
                            ],
                          ),
                          SizedBox(height: 12,),
                          DottedLine(
                            lineThickness: 2,
                            dashColor: HexColor("#EBF0FF"),
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Text(
                                "Total price",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    color: HexColor("#223263")),
                              ),
                              Spacer(),
                              Text(r"$766.86",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black))
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
