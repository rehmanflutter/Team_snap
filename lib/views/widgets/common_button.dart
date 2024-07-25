import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_snap/views/widgets/app_custom.dart';

class CommonButton extends StatelessWidget {
  CommonButton(
      {super.key,
      required this.onPressed,
      required this.title,
      this.backgroundColors});
  final VoidCallback onPressed;
  final String title;
  Color? backgroundColors = Color(0xff1b6bb0);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.06,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              )),
              backgroundColor: MaterialStateProperty.all(backgroundColors)),
          child: Text(
            title,
            style: GoogleFonts.poppins(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
          )),
    );
  }
}
