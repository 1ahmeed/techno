import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/screen/review/write_review_screen.dart';

import '../../core/utils/app_assets.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                const SizedBox(height: 26,),
                Row(
                  children: [
                    SvgPicture.asset(AppAssets.arrowLeft),
                    Text("5 review", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: HexColor("#50555C"),
                        fontSize: 16
                    ),),
                  ],
                ),
                const SizedBox(height: 28,),
                const Divider(),
                const SizedBox(height: 19,),
                ListView.separated(
                  shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) =>Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                radius: 30,
                                child: Image.asset(AppAssets.person1)
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("James Lawson", style: TextStyle(
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
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  itemBuilder: (context, _) =>
                                  const SizedBox(
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
                            ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                        Row(
                          children: [
                            SizedBox(
                              child: Text(
                                "air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small"
                                    " but the 90s are and will always be one of my favorites.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: HexColor("#9098B1")
                                ),
                              ),
                              width: 300,
                            )
                          ],
                        ),
                        const SizedBox(height: 15,),
                        Text("December 10, 2016", style: TextStyle(
                            color: HexColor("#9098B1"),
                            fontWeight: FontWeight.w400,
                            fontSize: 10
                        ),),
                      ],
                    ) ,
                    separatorBuilder: (context, index) => const SizedBox(height: 5,),
                    itemCount: 6),
                const SizedBox(height: 59,),

                CustomButton(function: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  WriteReviewScreen(),));
                }, text: "write review",
                background: HexColor("#BA6400"),

                )



              ],
            ),
          ),
        ));
  }
}
