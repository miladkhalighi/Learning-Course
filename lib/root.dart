
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/controller/bottom_nav_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = Get.put(BottomNavController());

    return SafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          screens: controller.screens,
          decoration: NavBarDecoration(
            colorBehindNavBar: backgroundColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          items: controller.navBarsItems(),
          confineInSafeArea: true,
          navBarHeight: Get.height /11.2,
          navBarStyle: NavBarStyle.style10,
          onItemSelected: (index) {
            controller.updateIndex(index);
          },
          backgroundColor: primaryColor,
          itemAnimationProperties: const ItemAnimationProperties(
            duration: Duration(milliseconds: 300),
            curve: Curves.ease,
          ),
        ),
      ),
    );
  }
}
