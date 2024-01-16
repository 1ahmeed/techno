import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_button.dart';

import '../../../core/item_model.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../../home/widgets/sale_item.dart';

class YouMightLightSection extends StatelessWidget {
  YouMightLightSection({Key? key}) : super(key: key);
  final List<ItemModel> boarding = [
    ItemModel(
        image: AppAssets.item1Png,
        title:" FS - Nike Air Max 270 React",
        discount:r"$534,33" ,
        percent: "24% Off",
        salary:r"$299,43"
    ),
    ItemModel(
        image: AppAssets.item2Png,
        // image: "",
        title:" FS - Nike Air Max 270 React",
        discount:r"$534,33" ,
        percent: "24% Off",
        salary:r"$299,43"
    ),
    ItemModel(
        image: AppAssets.item1Png,
        title:" FS - Nike Air Max 270 React",
        discount:r"$534,33" ,
        percent: "24% Off",
        salary:r"$299,43"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("You Might Also Like",style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: HexColor("#223263")
        ),),
        const SizedBox(height: 13,),
        SizedBox(
          height: 250,
          child: ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(width: 10,),
            scrollDirection: Axis.horizontal,
            itemCount: boarding.length,
            itemBuilder: (context, index) => SaleItem(itemModel: boarding[index]),),
        ),

      ],
    );
  }
}
