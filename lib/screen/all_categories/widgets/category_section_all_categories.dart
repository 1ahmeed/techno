import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/all_categories/all_categories_screen.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AllCategoriesScreen(),));
          },
          child: SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
                itemBuilder: (context, index) {
                  return SvgPicture.asset(AppAssets.cat1,width: 100,height: 100,);
                }),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const SizedBox(width: 25,),
              SizedBox(
                  width:70,child: Text(AppStrings.categoryName,style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#50555C")
              ),)),
              const SizedBox(width: 25,),
              SizedBox(
                  width:70,child: Text(AppStrings.categoryName,style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#50555C")
              ),)),
              const SizedBox(width: 25,),
              SizedBox(
                  width:70,child: Text(AppStrings.categoryName,style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#50555C")
              ),)),
              const SizedBox(width: 25,),
              SizedBox(
                  width:70,child: Text(AppStrings.categoryName,style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: HexColor("#50555C")
              ),))
            ],
          ),
        ),
      ],
    );
  }
}