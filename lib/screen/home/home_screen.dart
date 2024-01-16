import 'package:flutter/material.dart';
import 'package:task_techno/screen/home/widgets/category_section.dart';
import 'package:task_techno/screen/home/widgets/flash_sale_section.dart';
import 'package:task_techno/screen/home/widgets/main_banner_section.dart';
import 'package:task_techno/screen/home/widgets/may_like_section.dart';
import 'package:task_techno/screen/home/widgets/search_section.dart';
import 'package:task_techno/screen/home/widgets/second_banner_section.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height*.001),
          child: ListView(
            physics: const BouncingScrollPhysics(),
             shrinkWrap: true,
            children: [
              const SizedBox(height: 2,),
              ///search
              SearchSection(),
              const SizedBox(height: 14,),
              ///banner
              MainBannerSection(),
              ///category
            const CategorySection(),
              ///banner2
              const SizedBox(height: 20,),
              SecondBannerSection(),
              const SizedBox(height: 23,),
             ///flash
              FlashSaleSection(),
               const SizedBox(height: 10,),
              ///may like section
              MayLikeSection(),

            ],
          ),
        ),
      ),
    );
  }
}






