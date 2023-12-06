import 'package:flutter/material.dart';
import 'package:flutter_practice_2911/theme/app_colors.dart';
import 'package:flutter_practice_2911/theme/app_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
    required this.onPressed,
    required this.title,

  });
  final String title;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        minimumSize: Size(121.w, 57.h),
        backgroundColor:AppColors.fontsColor.withOpacity(0.20),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        )
      ),
      
        onPressed: onPressed, child: Text(title,style: AppFonts.w600s17,));
  }
}
