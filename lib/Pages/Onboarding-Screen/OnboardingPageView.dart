import 'package:evo_plexus/Pages/Onboarding-Screen/Onboarding_1.dart';
import 'package:evo_plexus/Pages/Onboarding-Screen/Onboarding_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'Onboarding_2.dart';

class OnboardingPageView extends StatefulWidget {
  @override
  _OnboardingPageViewState createState() => _OnboardingPageViewState();
}

class _OnboardingPageViewState extends State<OnboardingPageView> {
  final List<Widget> pages = [
    Onboarding_1(),
    Onboarding_2(),
    Onboarding_3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: pages,
      ),
    );
  }
}
