import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/gen/assets.gen.dart';
import 'package:learning_course/constants/strings.dart';

class LogInScreen extends StatelessWidget {
  TextEditingController emailId = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.height / 7,
                  width: size.width / 2,
                  child: Text(
                    logIn,
                    style: textTheme.headline1,
                  ),
                ),
                SizedBox(
                  height: size.height / 21.53,
                ),
                SvgPicture.asset(Assets.images.login.path),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width / 12.58,
                      size.height / 19.3,
                      size.width / 12.58,
                      size.height / 28.93),
                  child: TextField(
                    controller: emailId,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: logInTextField,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: secondaryTextColor,
                        ),
                        hintText: emailHintText,
                        hintStyle: textTheme.bodyText2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width / 12.58, 0,
                      size.width / 12.58, size.height / 28.93),
                  child: TextField(
                    controller: emailId,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: logInTextField,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: secondaryTextColor,
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: secondaryTextColor,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
