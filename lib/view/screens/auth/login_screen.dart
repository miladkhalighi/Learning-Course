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
        body: Center(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      size.width / 2.06,
                      size.height / 11.575,
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
                      ),
                      hintText: emailHintText,
                      hintStyle: textTheme.bodyText2,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(size.width / 12.58, 0,
                      size.width / 12.58, size.height / 28.93),
                  child: TextField(
                    obscureText: _obscureText,
                    enableSuggestions: false,
                    autocorrect: false,
                    controller: emailId,
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: logInTextField,
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
                        ),
                        suffixIcon: IconButton(
                          color: secondaryTextColor,
                          icon: Icon(_obscureText
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined),
                          onPressed: () {
                            setState(() {
                              _obscureText = !_obscureText;
                            });
                          },
                        )),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(logIn),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
