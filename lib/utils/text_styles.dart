import 'package:deliveryapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle buttonTextStyleone =
      GoogleFonts.openSans(fontSize: 14, fontWeight: FontWeight.bold);
  static TextStyle inputTextStyle = GoogleFonts.openSans(
      fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.primeryColor);
  static TextStyle hintTextStyle = GoogleFonts.openSans(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.primeryColor.withValues(alpha: .5));
  static TextStyle headerStyleOne =
      GoogleFonts.openSans(fontSize: 24, fontWeight: FontWeight.w500);
}
