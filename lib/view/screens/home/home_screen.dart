import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/constants/constants.dart';
import 'package:learning_course/constants/strings.dart';

import '../../components/item_horizontal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Get.textTheme;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(bodyMargin),
        child: Column(
          children: [
            Row(children: [
              Icon(EvaIcons.personOutline, color: secondaryTextColor, size: 12,),
              const SizedBox(width: 4,),
              Text('ساسان صفری',),
              const Spacer(),
              Text(showMore, ),
            ],),
            ItemHorizontal()
          ],
        ),
      ),
    );
  }
}


