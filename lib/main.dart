import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team_snap/test.dart';
import 'package:team_snap/views/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Team Snap',
      theme: ThemeData(
        //  scaffoldBackgroundColor: Colors.black87,
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff1b6bb0)),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}
