import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learning_course/constants/colors.dart';
import 'package:learning_course/gen/assets.gen.dart';
import 'package:learning_course/constants/strings.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailId = TextEditingController();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width / 2.06,
                    size.height / 17,
                    size.width / 13.375,
                    size.height / 22.481),
                child: Text(
                  logInScreenTitle,
                  style: textTheme.headline1,
                ),
              ),
              SvgPicture.asset(
                Assets.images.login.path,
                height: size.height / 4.35,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    size.width / 12.58,
                    size.height / 19.3,
                    size.width / 12.58,
                    size.height / 28.93),
                child: TextField(
                  // controller: emailId,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: logInTextField,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: size.height / 44.095),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(
                      Icons.email_outlined,
                      color: secondaryTextColor,
                      size: 22,
                    ),
                    hintText: emailHintText,
                    hintStyle: textTheme.bodyText2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(size.width / 12.58, 0,
                    size.width / 12.58, size.height / 14.46),
                child: TextField(
                  obscureText: _obscureText,
                  enableSuggestions: false,
                  autocorrect: false,
                  textDirection: TextDirection.rtl,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: logInTextField,
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: size.height / 44.095),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      hintText: "رمز ورود",
                      hintStyle: textTheme.bodyText2,
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        color: secondaryTextColor,
                        size: 22,
                      ),
                      suffixIcon: IconButton(
                        color: secondaryTextColor,
                        icon: Icon(_obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined),
                        iconSize: 22,
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )),
                ),
              ),
              SizedBox(
                height: size.height / 15.143,
                width: size.width / 1.145,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(elevation: 0),
                  child: Text(logIn),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height / 38.583, bottom: size.height / 54.502),
                child: Text(
                  forgetPassword,
                  style: textTheme.headline4,
                ),
              ),
              Divider(
                thickness: 1,
                color: divider,
                indent: size.width / 13.811,
                endIndent: size.width / 13.811,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, size.height / 30.856, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      notAccount,
                      style: textTheme.bodyText2,
                    ),
                    SizedBox(
                      width: size.width / 23.777,
                    ),
                    Text(
                      "ثبت نام",
                      style: textTheme.headline4,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height / 20.577,
              )
            ],
          ),
        ),
      ),
    );
  }
}
