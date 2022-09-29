
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';

var itemDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: itemColor,
    boxShadow: [
      BoxShadow(
        offset: const Offset(0, 4),
        color: Colors.black.withOpacity(0.25),
        blurRadius: 10,)
    ]);

customAppBar(BuildContext context,String title)  {
  return PreferredSize(
    preferredSize: const Size(double.infinity, 74),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(0,16,8,8),
      child: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: backgroundColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            InkWell(
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
                    // boxShadow: [
                    //   BoxShadow(
                    //     offset: const Offset(0, 1),
                    //     color: secondaryColor.withOpacity(0.25),
                    //     blurRadius: 2,)
                    // ]
                ),
                child: Icon(EvaIcons.arrowIosForwardOutline,color: secondaryColor,),
              ),
            ),
            Expanded(child: Center(child: Text(title,style: Theme.of(context).textTheme.headline3,overflow: TextOverflow.ellipsis,))),
            const SizedBox(width: 48,)
          ],
        ),
      ),
    ),
  );

}