import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_course/constants/constants.dart';
import 'package:learning_course/controller/item_details_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../constants/colors.dart';

class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pageController = PageController();
    var itemDetailsController = Get.put(ItemDetailsController());

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(pageController),
            Padding(
              padding: EdgeInsets.all(bodyMargin),
              child: Text(
                'صفر تا صد فلاتر در یک روز',
                style: Get.textTheme.headline3,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            buildExpandablePanel(itemDetailsController),
            toggleWidget(itemDetailsController),
          ],
        ),
      ),
    );
  }

  Widget toggleWidget(ItemDetailsController itemDetailsController) {
    return Padding(
            padding: EdgeInsets.all(bodyMargin),
            child: Container(
              width: Get.width / 2,
              height: 34,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: primaryLightColor,
              ),
              child: Obx(
                ()=> Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){itemDetailsController.updateShowComments();},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: itemDetailsController.showComments.value
                                ? primaryColor
                                : primaryLightColor,
                          ),
                          child: Center(
                              child: Text(
                                'توضیحات',
                                style: TextStyle(
                                    fontSize: 12,
                                    color:
                                    itemDetailsController.showComments.value
                                        ? Colors.white
                                        : secondaryColor),
                              )),
                        ),
                      )
                    ),
                    Expanded(
                      flex: 1,
                      child: InkWell(
                        onTap: (){itemDetailsController.updateShowComments();},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: itemDetailsController.showComments.value==true ?
                            primaryLightColor :
                            primaryColor,
                          ),
                          child: Center(
                              child: Text(
                                'نظرات کاربران',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: itemDetailsController.showComments.value
                                        ? secondaryColor
                                        : Colors.white),
                              )),
                        ),
                      )
                    )
                  ],
                ),
              ),
            ),
          );
  }

  ExpandablePanel buildExpandablePanel(
      ItemDetailsController itemDetailsController) {
    return ExpandablePanel(
      collapsed: Padding(
        padding: EdgeInsets.all(bodyMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.personOutline,
                        title: 'مدرسان',
                        content: ' ساسان صفری' * 5)),
                const SizedBox(
                  width: 4,
                ),
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.starOutline,
                        title: 'امتیاز',
                        content: '4.8/5')),
              ],
            ),
            SizedBox(
              height: bodyMargin,
            ),
            Row(
              children: const [
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.barChart2Outline,
                        title: 'سطح دوره',
                        content: 'پیشرفته')),
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.pricetagsOutline,
                        title: 'قیمت',
                        content: '100000 تومان')),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            IconButton(
                onPressed: () {
                  itemDetailsController.changeExpand();
                },
                icon: const Icon(EvaIcons.arrowIosDownwardOutline)),
          ],
        ),
      ),
      expanded: Padding(
        padding: EdgeInsets.all(bodyMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.barChart2Outline,
                        title: 'سطح دوره',
                        content: 'پیشرفته')),
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.pricetagsOutline,
                        title: 'قیمت',
                        content: '100000 تومان')),
              ],
            ),
            SizedBox(
              height: bodyMargin,
            ),
            Row(
              children: const [
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.clockOutline,
                        title: 'مدت زمان',
                        content: '12:50:43')),
                Expanded(
                    flex: 1,
                    child: ItemIconAndTitle(
                        icon: EvaIcons.starOutline,
                        title: 'امتیاز',
                        content: '4.8/5')),
              ],
            ),
            SizedBox(
              height: bodyMargin,
            ),
            ItemIconAndTitle(
              icon: EvaIcons.personOutline,
              title: 'مدرسان',
              content: ' ساسان صفری' * 5,
              contentMaxLine: 2,
            ),
            SizedBox(
              height: bodyMargin,
            ),
            ItemIconAndTitle(
              icon: EvaIcons.fileTextOutline,
              title: 'پیش نیازها',
              content: 'پیش ' * 4,
              contentMaxLine: 2,
            ),
            SizedBox(
              height: bodyMargin,
            ),
            ItemIconAndTitle(
              icon: EvaIcons.messageCircleOutline,
              title: 'شعار دوره',
              content: ' خیلی خوبیم ما خیلی خوبیم ما' * 5,
              contentMaxLine: 2,
            ),
            const SizedBox(
              height: 16,
            ),
            IconButton(
                onPressed: () {
                  itemDetailsController.changeExpand();
                },
                icon: const Icon(EvaIcons.arrowIosUpwardOutline)),
          ],
        ),
      ),
      controller: itemDetailsController.expandableController,
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
              onTap: () {
                Get.back();
              },
              child: Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: primaryLightColor.withOpacity(0.8),
                ),
                child: Icon(
                  EvaIcons.arrowIosForwardOutline,
                  color: secondaryColor,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ItemIconAndTitle extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;
  final int contentMaxLine;

  const ItemIconAndTitle({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
    this.contentMaxLine = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: primaryColor,
          size: 16,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          title,
          style: Get.textTheme.bodyText2
              ?.copyWith(color: primaryColor, fontSize: 13),
        ),
        const SizedBox(
          width: 16,
        ),
        Flexible(
          child: Text(
            content,
            overflow: TextOverflow.ellipsis,
            maxLines: contentMaxLine,
            style: Get.textTheme.bodyText2
                ?.copyWith(color: const Color(0xFF5E5E5E), fontSize: 12),
          ),
        ),
      ],
    );
  }
}
