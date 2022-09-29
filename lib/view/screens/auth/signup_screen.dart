import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/constants/strings.dart';
import 'package:learning_course/gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(size.width / 2.09, size.height / 17,
                size.width / 13.37, size.height / 22.48),
            child: Text(
              signUpScreenTitle,
              style: textTheme.headline1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.height / 16.1, bottom: size.height / 10.74),
            child: SvgPicture.asset(
              Assets.images.signup.path,
              height: size.height / 3.19,
            ),
          ),
          SizedBox(
            height: 58,
            width: size.width / 1.14,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(signUp),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(size.width / 13.37,
                size.height / 38.58, size.width / 13.37, size.height / 54.502),
            child: RichText(
                text: TextSpan(
              text: agreeTermsOfServices,
              style: textTheme.headline4,
            )),
          ),
          Divider(
            thickness: 1,
            color: divider,
            indent: size.width / 13.81,
            endIndent: size.width / 13.81,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, size.height / 30.85, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(
                  text: alreadyHaveAccount,
                  style: textTheme.bodyText2,
                )),
                SizedBox(
                  width: size.width / 23.77,
                ),
                RichText(
                    text: TextSpan(
                  text: logIn,
                  style: textTheme.headline4,
                )),
              ],
            ),
          ),
          SizedBox(
            height: size.height / 20.57,
          )
        ],
      )),
    ));
  }
}
