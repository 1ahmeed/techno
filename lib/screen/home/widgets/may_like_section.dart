import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/home/widgets/product_item.dart';
import 'package:task_techno/screen/product/product_screen.dart';

import '../../../core/item_model.dart';
import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class MayLikeSection extends StatelessWidget {
  MayLikeSection({Key? key}) : super(key: key);
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
    ItemModel(
        image: AppAssets.item2Png,
        title:" FS - Nike Air Max 270 React",
        discount:r"$534,33" ,
        percent: "24% Off",
        salary:r"$299,43"
    ),
  ];
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0),
              child: Text(AppStrings.yoyMayLike,style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: HexColor("#50555C")
              ),),
            ),
            const Spacer(),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProductScreen(),));
            }, child: const Text("see all",style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 12,

            ),))
          ],
        ),
        const SizedBox(height: 7,),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: GridView.builder(
              itemCount:boarding.length,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: .05,
                crossAxisSpacing: 31,
                childAspectRatio:  1.0 / 1.7,
              ),
              itemBuilder: (context, index) => ProductItem(itemModel: boarding[index])
          ),
        ),
      ],
    );
  }
}