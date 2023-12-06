import 'package:flutter/material.dart';
import 'package:flutter_practice_2911/theme/app_colors.dart';
import 'package:flutter_practice_2911/theme/app_fonts.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
   CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.maxLength,
    this.onChanged,


  });
  final String hintText;
  final TextEditingController controller;
  final int? maxLength;
   Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      
      maxLength: 9,
      style: AppFonts.w600s15,
      controller: controller,
        decoration: InputDecoration(
          counterText: "",
          
          
      fillColor: AppColors.fontsColor.withOpacity(0.20),
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(
        color: AppColors.fontsColor,
      ),
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    ));
  }
}
