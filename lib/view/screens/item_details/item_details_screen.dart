import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_course/constants/constants.dart';
import 'package:learning_course/gen/assets.gen.dart';
import 'package:learning_course/view/components/components.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            header(pageController),
            Container(color: Colors.green),
          ],
        ),
      ),
    );
  }

  SizedBox header(PageController pageController) {
    return SizedBox(
            height: Get.height / 2.76,
            child: Stack(
              children: [
                PageView(
                  controller: pageController,
                  children: [
                    //Image(image: AssetImage(Assets.images.imgtest.path),fit: BoxFit.fill,),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.blue,
                    ),
                    Container(
                      color: Colors.red,
                    ),
                  ],
                ),
                Positioned(
                  bottom: bodyMargin,
                  right: bodyMargin,
                  child: SmoothPageIndicator(
                    controller: pageController,
                    count: 3,
                    effect: ExpandingDotsEffect(
                        dotHeight: 12,
                        dotWidth: 12,
                        activeDotColor: secondaryColor,
                        dotColor: secondaryTextColor),
                  ),
                ),
                Positioned(
                  top: 48,
                  right: 24,
                  child: InkWell(
                    highlightColor: secondaryColor,
                    splashColor: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    onTap: (){Get.back();},
                    child: Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: primaryLightColor.withOpacity(0.8),
                      ),
                      child: Icon(EvaIcons.arrowIosForwardOutline,color: secondaryColor,),
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
