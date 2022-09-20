import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

class ItemHorizontal extends StatelessWidget {
  const ItemHorizontal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Get.textTheme.bodyText1
        ?.copyWith(fontSize: 8, color: secondaryTextColor);

    return Container(
      width: Get.width / 2,
      height: Get.height / 5.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: itemColor,
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 4),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 16)
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: Get.height / 8.8,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: primaryLightColor,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  Text(
                    'صفر تا صد فلاتر',
                    style: myTextStyle?.copyWith(
                        fontSize: 10, color: primaryTextColor),
                  ),
                  const Spacer(),
                  Text(
                    '5k',
                    style: myTextStyle,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Icon(
                    EvaIcons.eyeOutline,
                    color: secondaryTextColor,
                    size: 12,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Row(
                children: [
                  Icon(
                    EvaIcons.personOutline,
                    color: secondaryTextColor,
                    size: 12,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'ساسان صفری',
                    style: myTextStyle,
                  ),
                  const Spacer(),
                  Text(
                    '10000 تومان',
                    style: myTextStyle?.copyWith(color: secondaryColor),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}