import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/constants/strings.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class BottomNavController extends GetxController{
  var itemIndex = 3.obs;

  updateIndex(int index){
    itemIndex.value = index;
  }


  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(EvaIcons.personOutline),
        inactiveIcon: const Icon(EvaIcons.person),
        title: (profileName),
        activeColorPrimary: primaryLightColor,
        activeColorSecondary: secondaryColor,
        inactiveColorPrimary: secondaryColor,
        textStyle: Get.textTheme.bodyText2,



      ),
      PersistentBottomNavBarItem(
        icon: const Icon(EvaIcons.bookmarkOutline),
        inactiveIcon: const Icon(EvaIcons.bookmark),
        title: (favName),
        activeColorPrimary: primaryLightColor,
        activeColorSecondary: secondaryColor,
        inactiveColorPrimary: secondaryColor,
        textStyle: Get.textTheme.bodyText2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(EvaIcons.bookOpenOutline),
        inactiveIcon: const Icon(EvaIcons.bookOpen),
        title: (searchName),
        activeColorPrimary: primaryLightColor,
        activeColorSecondary: secondaryColor,
        inactiveColorPrimary: secondaryColor,
        textStyle: Get.textTheme.bodyText2,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(EvaIcons.homeOutline),
        inactiveIcon: const Icon(EvaIcons.home),
        title: (homeName),
        activeColorPrimary: primaryLightColor,
        activeColorSecondary: secondaryColor,
        inactiveColorPrimary: secondaryColor,
        textStyle: Get.textTheme.bodyText2,
      ),

    ];
  }

  List<Widget> screens = [
    const Center(child: Text('SCREEN 1')), // TODO replace them with correct screens
    const Center(child: Text('SCREEN 2')),
    const Center(child: Text('SCREEN 3')),
    const Center(child: Text('SCREEN 4')),
  ];

}