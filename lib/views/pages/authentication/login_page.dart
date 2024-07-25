import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:team_snap/views/pages/tabs/schedule/widget/availability_List.dart';
import 'package:team_snap/views/pages/bottom_nav_page/bottom_nav_page.dart';
import 'package:team_snap/views/widgets/app_custom.dart';
import 'package:team_snap/views/widgets/common_button.dart';
import 'package:team_snap/views/widgets/common_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController mailCtrl = TextEditingController();
  final TextEditingController passCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.black87,
        title: Text(
          'Login',
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SizedBox.expand(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonField(
                      controller: mailCtrl,
                      onChanged: (value) {},
                      validator: (value) {
                        return '';
                      },
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 20),
                    CommonField(
                      controller: passCtrl,
                      isObscure: true,
                      onChanged: (value) {},
                      validator: (value) {
                        return '';
                      },
                      hintText: 'Password',
                    ),
                    const SizedBox(height: 20),
                    CommonButton(
                      backgroundColors: appcolour,
                      onPressed: () => Get.offAll(() => BottomNavPage()),
                      title: 'Login',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
