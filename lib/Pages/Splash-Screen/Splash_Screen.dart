import 'dart:async';
import 'package:evo_plexus/Pages/Onboarding-Screen/Onboarding_1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:get/get.dart';

import '../Onboarding-Screen/OnboardingPageView.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(
          seconds: 2,
        ), () {
      Get.to(OnboardingPageView());
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
// backgroundColor: Colors.red,
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              "assets/images/bc.png",
              width: double.infinity,
            ).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.3,
            ),
            Image.asset(
              "assets/images/logo.png",
              color: Colors.white.withOpacity(0.9),
              colorBlendMode: BlendMode.modulate,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            Image.asset("assets/images/splash.png"),
          ],
        ),
      ),
    );
  }
}
// Column(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// SizedBox(height: 300),
// Center(child: Image.asset("assets/images/logo.png"),),
// SizedBox(height: 30),
// Center(child: Image.asset("assets/images/splash.png"),),
// ],
// ),

//
//
//
