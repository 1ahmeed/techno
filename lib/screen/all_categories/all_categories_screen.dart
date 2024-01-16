import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/product/product_screen.dart';

import '../../core/utils/app_assets.dart';
import '../../core/utils/app_strings.dart';

class AllCategoriesScreen extends StatelessWidget {
  const AllCategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding:  EdgeInsets.all(MediaQuery.of(context).size.height* .01),
          child: Column(
            children: [
              Row(
                children: [const SizedBox(width: 15,),
                  SvgPicture.asset(AppAssets.arrowLeft),
                  Text("All Categories",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color:HexColor("#50555C") ,
                      fontSize: 16
                  ),),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: 6,
                    scrollDirection: Axis.vertical,
                    separatorBuilder: (context, index) {
                      return const Row(
                        children: [
                          SizedBox(
                            width: 0,
                          ),
                        ],
                      );
                    },
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset(AppAssets.cat1,width: 100,height: 100,),
                            Row(
                              children: [
                                SizedBox(width: MediaQuery.of(context).size.width*.07,),

                                SizedBox(
                                    width:MediaQuery.of(context).size.width*.19,
                                    child: Text(AppStrings.categoryName,style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#50555C")
                                ),)),
                                SizedBox(width: MediaQuery.of(context).size.width*.04,),

                                // const SizedBox(width: 25,),
                                SizedBox(
                                    width:MediaQuery.of(context).size.width*.15,
                                    child: Text(AppStrings.categoryName,style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#50555C")
                                ),)),
                                SizedBox(width: MediaQuery.of(context).size.width*.06,),

                                 // const SizedBox(width: 25,),
                                SizedBox(
                                    width:MediaQuery.of(context).size.width*.15,
                                    child: Text(AppStrings.categoryName,style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#50555C")
                                ),)),
                                 SizedBox(width: MediaQuery.of(context).size.width*.07,),
                                SizedBox(
                                    width:MediaQuery.of(context).size.width*.15,
                                    child: Text(AppStrings.categoryName,style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: HexColor("#50555C")
                                ),)),


                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              )


            ],
          ),
        ),
      ),
    );
  }
}
