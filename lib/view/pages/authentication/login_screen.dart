import 'package:deliveryapp/constants/white_spaces.dart';
import 'package:deliveryapp/utils/colors.dart';
import 'package:deliveryapp/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserLoginScreen extends StatefulWidget {
  const UserLoginScreen({super.key});

  @override
  State<UserLoginScreen> createState() => _UserLoginScreenState();
}

class _UserLoginScreenState extends State<UserLoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hello !",
                style: GoogleFonts.openSans(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: AppColors.fText),
              ),
              WhiteSpaces.spaceH10,
              Text(
                "Sign In To Continue",
                style: GoogleFonts.openSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryTextcolor,
                ),
              ),
              WhiteSpaces.spaceH20,
              Form(
                key: formKey,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: AppColors.primeryColor,
                  cursorErrorColor: AppColors.primeryColor,
                  controller: _emailController,
                  style: AppTextStyle.inputTextStyle,
                  decoration: InputDecoration(
                    errorStyle: GoogleFonts.redHatText(
                      color: Colors.red.withValues(alpha: .7),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    filled: true,
                    fillColor: Colors.grey.withValues(alpha: .2),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(
                          10,
                        )),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "+91",
                        style: AppTextStyle.hintTextStyle,
                      ),
                    ),
                    hintText: "Enter Mobile Number",
                    prefixIconConstraints:
                        BoxConstraints(maxHeight: 44, maxWidth: 60),
                    hintStyle: AppTextStyle.hintTextStyle,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your Mobile Number";
                    } else if (value.length != 10 ||
                        !RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return 'Enter a valid Mobile Number';
                    }
                    return null;
                  },
                ),
              ),
              WhiteSpaces.spaceH10,
              Text("You will get an OTP to this number",
                  style: AppTextStyle.hintTextStyle),
              WhiteSpaces.spaceH20,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      formKey.currentState!.validate();
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.fText),
                        width: 130,
                        height: 40,
                        child: Center(
                            child: Text(
                          "NEXT",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.redHatText(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w800,
                          ),
                        ))),
                  ),
                ],
              ),
              WhiteSpaces.spaceH10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("You don't have Account ? ",
                      style: AppTextStyle.hintTextStyle),
                  Text("Create New", style: AppTextStyle.inputTextStyle),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
