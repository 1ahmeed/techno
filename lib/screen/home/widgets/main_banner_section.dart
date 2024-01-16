import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/utils/app_assets.dart';

class MainBannerSection extends StatelessWidget {
  MainBannerSection({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SizedBox(
            height: 139,
            child: PageView.builder(
              controller: pageController,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount:5,

              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 1.0),
                  child: Image.asset(AppAssets.banner)
                  // SvgPicture.asset(
                  //   AppAssets.banner,
                  //   width: 343,
                  //   fit: BoxFit.fill,
                  // ),
                );
              },
            ),
          ),
        ),
        const SizedBox(height: 7,),
        Center(
          child: SmoothPageIndicator(
            controller: pageController,
            count: 5,
            effect:  WormEffect(
              dotHeight: 8,
              dotWidth: 8,
              activeDotColor: HexColor("#50555C"),
              dotColor: HexColor("#898A8D"),
            ),
          ),
        ),
      ],
    );
  }
}
