import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:thunder_bird/Controllers/UIControllers.dart';
import 'package:thunder_bird/Pages/Auth/LoginSession_MainPage.dart';
import 'Constants/Constants.dart';

void main() {
  Get.put(UIController());
  runApp(const ThunderBirdApp());
}

class ThunderBirdApp extends StatelessWidget {
  const ThunderBirdApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(child,
          defaultScale: true,
          breakpoints: [
            const ResponsiveBreakpoint.resize(smallScreenSize, name: MOBILE),
            const ResponsiveBreakpoint.autoScale(mediumScreenSize, name: TABLET),
            const ResponsiveBreakpoint.resize(largeScreenSize, name: TABLET),
            const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
          ],
          background: Container(color: const Color(0xFFF5F5F5))),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245)),
      title: 'ThunderBird',
      home: const Login(),
    );
  }
}
