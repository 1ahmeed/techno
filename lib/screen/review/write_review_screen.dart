import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:task_techno/core/widgets/custom_button.dart';
import 'package:task_techno/core/widgets/custom_text_form_field.dart';
import 'package:task_techno/screen/home/home_screen.dart';
import 'package:task_techno/screen/layout/layout_screen.dart';

import '../../core/utils/app_assets.dart';

class WriteReviewScreen extends StatelessWidget {
  WriteReviewScreen({Key? key}) : super(key: key);
  final reviewController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 26,
              ),
              Row(
                children: [
                  SvgPicture.asset(AppAssets.arrowLeft),
                  Text(
                    "write review",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: HexColor("#50555C"),
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
              Text(
                "Please write Overall level of satisfaction with your shipping / Delivery Service",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: HexColor("#223263")),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    unratedColor: HexColor("#EBF0FF"),
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const SizedBox(
                      child: Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "3/5",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                        color: HexColor("#9098B1")),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "Write Your Review",
                style: TextStyle(
                    color: HexColor("#223263"),
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextFormField(
                controller: reviewController,
                keyboard: TextInputType.name,
                hintText:
                    "Ad velit voluptate laboris excepteur ex. Ea tempor veniam cillum ea cillum anim fugiat pariatur qui mollit ",
                hintStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#9098B1")),
                maxLines: 5,
                validate: (value) {
                  if (value!.isEmpty) {
                    return " Enter your message";
                  } else {
                    return null;
                  }
                },
                label: "Write your review here",
                labelStyle: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: HexColor("#9098B1")),
              ),
              Spacer(),
              Center(
                child: CustomButton(
                  function: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LayoutScreen(),
                          ));
                    }
                  },
                  text: "send review",
                  background: HexColor("#BA6400"),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
