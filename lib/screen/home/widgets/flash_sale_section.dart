import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/home/widgets/sale_item.dart';

import '../../../core/item_model.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class FlashSaleSection extends StatelessWidget {
  FlashSaleSection({Key? key}) : super(key: key);
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
        Padding(
          padding: const EdgeInsets.only(
              left: 16.0),
          child: Text(AppStrings.flashSale,style: TextStyle(
              fontSize: 14,
              shadows: const [
                Shadow(
                  color: Colors.black26,
                  blurRadius: 7.0,
                  offset: Offset(0.0, 2.0),
                ),
              ],
              fontWeight: FontWeight.w700,
              color: HexColor("##ED1C24")
          ),),
        ),
        const SizedBox(height: 13,),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            height: 250,
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 10,),
              scrollDirection: Axis.horizontal,
              itemCount: boarding.length,
              itemBuilder: (context, index) => SaleItem(itemModel: boarding[index]),),
          ),
        ),
      ],
    );
  }
}