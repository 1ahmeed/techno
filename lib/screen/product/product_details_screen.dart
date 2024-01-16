import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/screen/product/widgets/main_banner_screen_for_product_details.dart';
import 'package:task_techno/screen/product/widgets/you_might_light_section.dart';
import 'package:task_techno/screen/review/review_screen.dart';

import '../../core/utils/app_assets.dart';
import '../../core/widgets/custom_button.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          body: Padding(
            padding:  EdgeInsets.all(MediaQuery.of(context).size.height*.02),
          child:SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.arrowLeft),
                    Text("Product Name",style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color:HexColor("#50555C") ,
                        fontSize: 16
                    ),),
                  ],
                ),
                const Divider(),
                MainBannerSectionForProductDetails(),
                 const SizedBox(height: 3,),
                   Row(
                    children: [
                       SizedBox(
                        width: MediaQuery.of(context).size.height*.35,
                        child: Text("Product Name will dispaly here",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                        ),),
                      ),
                      SizedBox(width: 30,),
                      InkWell (
                          onTap: (){},
                          child: Icon(Icons.favorite_outline,color: HexColor("#9098B1"),))
                    ],
                ),
            RatingBar.builder(
              initialRating: 3,
              unratedColor: HexColor("#EBF0FF"),
              minRating: 1,
              itemSize: 15,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
              itemBuilder: (context, _) =>  const SizedBox(
                child: Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
                const SizedBox(height: 16,),
                Row(
                  children: [
                    Text(r"$299,43",style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: HexColor("#50555C")
                    ),),
                    const Spacer(),
                    Text(r"$534,33",
                        style: TextStyle(
                          color: HexColor("#9098B1"),
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.lineThrough

                        ),
                    ),
                    const SizedBox(width: 10,),
                    Text("24% Off",style: TextStyle(
                      color: HexColor("#FB7181"),
                      fontSize: 10,
                      fontWeight: FontWeight.w700
                    ),),
                    const SizedBox(width: 15,)
                  ],
                ),
                const SizedBox(height: 22,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Details",style: TextStyle(
                        color: HexColor("#F57E2E"),
                        fontWeight: FontWeight.w700,
                        fontSize: 14
                      ),),
                      const SizedBox(height: 5,),
                      Text("The Nike Air Max 270 React ENG combines a full-length React foam midsole with a 270 Max Air unit for "
                          "unrivaled comfort and a striking visual experience.",
                        style: TextStyle(
                        color: HexColor("#9098B1"),
                        fontWeight: FontWeight.w400,
                        fontSize: 12
                      ),),
                      const SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("Review Product",style: TextStyle(
                              color: HexColor("#223263"),
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                          ),),
                          const Spacer(),
                          TextButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const ReviewScreen(),));
                          }, child: Text("see more",
                            style: TextStyle(
                                color: HexColor("#898A8D"),
                                fontWeight: FontWeight.w700,
                                fontSize: 12
                            ),
                          ))

                        ],
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: 3,
                            unratedColor: HexColor("#EBF0FF"),
                            minRating: 1,
                            itemSize: 15,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) =>  const SizedBox(
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          const SizedBox(width: 5,),
                          Text("4.5 ",style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: HexColor("#9098B1")
                          )),
                          Text("(5 review)",style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: HexColor("#9098B1")
                          )),

                        ],
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child:Image.asset(AppAssets.person1)
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("James Lawson",style: TextStyle(
                                color: HexColor("#223263"),
                                fontSize: 14,
                                fontWeight: FontWeight.w700
                              ),),
                              const SizedBox(height: 5,),
                              RatingBar.builder(
                                initialRating: 3,
                                unratedColor: HexColor("#EBF0FF"),
                                minRating: 1,
                                itemSize: 15,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                                itemBuilder: (context, _) =>  const SizedBox(
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),

                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          SizedBox(
                            width: 300,
                            child: Text("air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small"
                                " but the 90s are and will always be one of my favorites.",
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: HexColor("#9098B1")
                            ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Text("December 10, 2016",style: TextStyle(
                          color: HexColor("#9098B1"),
                        fontWeight: FontWeight.w400,
                        fontSize: 10
                      ),),

                      const SizedBox(height: 15,),
                      YouMightLightSection(),
                      const SizedBox(height: 50,),

                      CustomButton(function: (){}, text: "Add To Cart",
                        background:HexColor("#BA6400"),

                      )
                    ],

                  ),
                )
              ],
            ),
          ) ,

          ),
        ) );
  }
}
