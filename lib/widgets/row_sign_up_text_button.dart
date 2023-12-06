import 'package:flutter/material.dart';
import 'package:flutter_practice_2911/theme/app_colors.dart';
import 'package:flutter_practice_2911/theme/app_fonts.dart';

class RowSignUpTextButton extends StatelessWidget {
  const RowSignUpTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text("Are you a new user? ",style: AppFonts.w600s15,),
      TextButton(onPressed: (){}, child: Text("Sign Up",style: AppFonts.w600s15.copyWith(color: AppColors.textButtonColor),))
    ],);
  }
}