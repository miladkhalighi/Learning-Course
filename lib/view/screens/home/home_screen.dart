
import 'package:flutter/material.dart';
import 'package:learning_course/constants/strings.dart';
import 'package:learning_course/gen/assets.gen.dart';
import 'package:learning_course/model/course_item_model.dart';

import 'course_category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(height: 48,),
            CourseCategory(catTitle: mostPopular, mylist: fakeCourseItems, iconPath: Assets.icons.fire.path),
            CourseCategory(catTitle: bestOffers, mylist: fakeCourseItems, iconPath: Assets.icons.moneyMouthFace.path),
            CourseCategory(catTitle: learnFree, mylist: fakeCourseItems, iconPath: Assets.icons.starStruck.path,),
            CourseCategory(catTitle: learnFree, mylist: fakeCourseItems, iconPath: Assets.icons.starStruck.path,),
            const SizedBox(height: 48,)
          ],
        ),
      ),
    );
  }
}


