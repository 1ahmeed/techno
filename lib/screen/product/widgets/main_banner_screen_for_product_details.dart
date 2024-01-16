import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/app_assets.dart';

class MainBannerSectionForProductDetails extends StatelessWidget {
  MainBannerSectionForProductDetails({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 139,
          child: PageView.builder(
            controller: pageController,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount:5,

            itemBuilder: (context, index) {
              return Image.asset(AppAssets.bannerDetails,fit: BoxFit.cover,);
            },
          ),
        ),
        const SizedBox(height: 21,),
        Center(
          child: SmoothPageIndicator(
            controller: pageController,
            count: 5,
            effect:  WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: HexColor("#ED1C24"),
              dotColor: HexColor("#898A8D"),
            ),
          ),
        ),
      ],
    );
  }
}
