import 'package:evo_plexus/Pages/Onboarding-Screen/OnboardingPageWidget.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:get/get.dart';
import '../Login & SignUp-Screen/Login_with_google.dart';
import 'Onboarding_2.dart';

// ignore: camel_case_types
class Onboarding_1 extends StatelessWidget {
  const Onboarding_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          children: [
            OnboardingImage("assets/images/onboarding_1.png", context),
            SizedBox(
              height: height * 0.06,
            ),
            Onboardingheadingtext("Find Trusted Doctors", context),
            SizedBox(
              height: height * 0.010,
            ),
            Onboardingparatext(
                "Contrary to popular belief, Lorem Ipsum is \n not simply random text."
                " It has roots in a \n piece of it over 2000 years old.",
                context),
            SizedBox(
              height: height * 0.04,
            ),
            OnboardingIndicator(const Color(0xff025188), const Color(0xffF2F2F2), const Color(0xffF2F2F2), context),
            SizedBox(
              height: height * 0.04,
            ),
            GestureDetector(
                onTap: () {
                  Get.to(
                    const Onboarding_2(),
                    transition: Transition.rightToLeftWithFade,
                    duration: const Duration(
                      milliseconds: 600,
                    ),
                  );
                },
                child: mainButton("Get Started", const Color(0xff4DA0E6), context)),
            SizedBox(
              height: height * 0.05,
            ),
            TextButton(
              onPressed: () {
                Get.to(LoginwithGoogle());
              },
              child: const Text(
                "Skip",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontSize: 14,
                    color: Color(0xff8C8C8C),
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}