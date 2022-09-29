
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
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
  //TODO move these methods into controller
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(size.width / 13.375, size.height / 17, size.width / 13.375, size.height / 22.481),
                child: Text(
                  logInScreenTitle,
                  style: textTheme.headline1,
                ),
              ),
              Center(
                child: SvgPicture.asset(
                  Assets.images.login.path,
                  height: size.height / 4.35,
                ),
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
                      EvaIcons.emailOutline,
                      color: secondaryTextColor,
                      size: 24,
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
                      hintText: passwordHintText,
                      hintStyle: textTheme.bodyText2,
                      prefixIcon: Icon(
                        EvaIcons.lockOutline,
                        color: secondaryTextColor,
                        size: 24,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          //TODO replace setState with Controller
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(!_obscureText
                            ? EvaIcons.eyeOutline
                            : EvaIcons.eyeOffOutline,color: secondaryTextColor,size: 24,),
                      )
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  height: size.height / 15.143,
                  width: size.width / 1.145,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(logIn),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(
                      top: size.height / 38.583),
                  child: TextButton(onPressed: (){
                    //TODO
                  }, child: Text(
                    forgetPassword,
                    style: textTheme.bodyText2?.copyWith(color: primaryColor),
                  )),
                ),
              ),
              Divider(
                thickness: 1,
                color: divider,
                indent: size.width / 13.811,
                endIndent: size.width / 13.811,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    notHaveAccount,
                    style: textTheme.bodyText2,
                  ),
                  SizedBox(
                    width: size.width / 23.777,
                  ),
                  TextButton(onPressed: (){
                    //TODO
                  }, child: Text(
                    "ثبت نام",
                    style: textTheme.bodyText2?.copyWith(color: primaryColor),
                  )),
                ],
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
