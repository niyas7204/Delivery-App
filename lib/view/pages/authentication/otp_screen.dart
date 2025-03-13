import 'package:deliveryapp/constants/white_spaces.dart';
import 'package:deliveryapp/utils/colors.dart';
import 'package:deliveryapp/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify !",
              style: GoogleFonts.openSans(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: AppColors.fText),
            ),
            WhiteSpaces.spaceH10,
            Text(
              "Enter the OTP sent to ******9797",
              style: GoogleFonts.openSans(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppColors.secondaryTextcolor,
              ),
            ),
            WhiteSpaces.spaceH10,
            SizedBox(
              child: Pinput(
                controller: _otpController,
                length: 6,
                defaultPinTheme: PinTheme(
                  margin: EdgeInsets.only(right: 5),
                  width: 56,
                  height: 56,
                  textStyle: AppTextStyle.inputTextStyle,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            width: 2, color: AppColors.primeryColor)),
                  ),
                ),
              ),
            ),
            WhiteSpaces.spaceH20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 50,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColors.fText,
                    ),
                    child: Center(
                        child: Text(
                      "Verify",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
              ],
            ),
            WhiteSpaces.spaceH20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t Recieve OTP ?  ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redHatText(
                    color: AppColors.secondaryTextcolor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "RESEND",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.redHatText(
                    color: AppColors.primeryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
