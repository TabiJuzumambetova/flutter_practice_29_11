import 'package:flutter/material.dart';
import 'package:flutter_practice_2911/core/app_consts.dart';
import 'package:flutter_practice_2911/theme/app_colors.dart';
import 'package:flutter_practice_2911/widgets/custom_text_field.dart';
import 'package:flutter_practice_2911/widgets/row_sign_up_text_button.dart';
import 'package:flutter_practice_2911/widgets/shared_prefs_widget.dart';
import 'package:flutter_practice_2911/widgets/sign_in_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class Secondscreen extends StatefulWidget {
  Secondscreen({super.key, required this.code});
  int code;

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  String? errorText;
  @override
  Widget build(BuildContext context) {
    final TextEditingController controllerCode = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [AppColors.bgColor1, AppColors.bgColo2],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Stack(
          children: [
            Positioned(
              top: 50.0,
              child: Image.asset(
                "assets/images/Ellipse1.png",
                width: 250.w,
                height: 250.h,
              ),
            ),
            Positioned(
              bottom: 50.0,
              right: 10.0,
              child: Image.asset(
                "assets/images/Ellipse2.png",
                width: 287.w,
                height: 287.h,
              ),
            ),
            Stack(
              children: [
                Positioned(
                    bottom: 170,
                    child: Container(
                      width: 428,
                      height: 565,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: AppColors.fontsColor.withOpacity(0.30)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 23,
                          ),
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                                color: AppColors.fontsColor),
                          ),
                          SizedBox(
                            height: 140.h,
                          ),
                          SizedBox(
                            width: 309.w,
                            height: 57.h,
                            child: CustomTextField(
                              maxLength: 9,
                              hintText: "Code",
                              controller: TextEditingController(),
                            ),
                          ),
                          SizedBox(
                            height: 102.h,
                          ),
                          SignInButton(
                              title: "Sign In",
                              onPressed: () async {
                                final SharedPreferences prefs =
                                    SharedPreferencesWidget.prefs;
                                await prefs.setString(
                                    AppConsts.phone, controllerCode.text);
                              }),
                          SizedBox(
                            height: 107.h,
                          ),
                          const RowSignUpTextButton()
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
