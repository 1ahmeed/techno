import 'package:flutter/material.dart';

import '../../../core/utils/app_assets.dart';

class SecondBannerSection extends StatelessWidget {
  SecondBannerSection({Key? key}) : super(key: key);
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SizedBox(
        height: 86,
        child: PageView.builder(
          controller: pageController,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount:5,

          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child:Image.asset(AppAssets.banner2)
            );
          },
        ),
      ),
    );
  }
}
