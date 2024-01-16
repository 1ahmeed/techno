import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../core/item_model.dart';
import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';
import '../home/widgets/product_item.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({Key? key}) : super(key: key);
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
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.arrowLeft),
                    Text("Category Name",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color:HexColor("#50555C") ,
                        fontSize: 16
                    ),),
                  ],
                ),
                Divider(),
                const SizedBox(height: 7,),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: GridView.builder(
                      itemCount:boarding.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        childAspectRatio: .85 / 1.4,
                      ),
                      itemBuilder: (context, index) => ProductItem(itemModel: boarding[index])
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
