// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
//
// import 'Onboarding_1.dart';
//
// class OnboardingPageIndicator extends StatelessWidget {
//
//   final controller = PageController();
//
//    OnboardingPageIndicator({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Expanded(
//             child: PageView(
//               controller: controller,
//               children: [
//                 Onboarding_1(),
//                 Onboarding_1(),
//                 Onboarding_1(),
//               ],
//             ),
//           ),
//           SmoothPageIndicator(controller: controller, count: 3,
//             effect: ScaleEffect(
//               activeDotColor: Color(0xff025188),
//               dotColor: Color(0xffF2F2F2),
//               dotHeight: 12,
//               dotWidth: 12,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';

Widget OnboardingImage(image, BuildContext context){
  return Image.asset(
    image,
    fit: BoxFit.fill,
    width: double.infinity,);
}

Widget Onboardingheadingtext(text, BuildContext context){
  return Text(
    text,
    style: TextStyle(
      color: Color(0xff000000),
      fontFamily: "Asap",
      fontSize: 28,
      fontWeight: FontWeight.w600,
    ),
    textAlign: TextAlign.center,
  );
}

Widget Onboardingparatext(text, BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0),
    child: Text(
      text,
      style: TextStyle(
        fontFamily: "Rubik",
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff595959),
        height: 1.30,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget OnboardingIndicator(color1, color2, color3, BuildContext context){
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          // color: Color(0xff025188),
          color: color1,
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          // color: Color(0xffF2F2F2),
          color: color2,
        ),
      ),
      SizedBox(
        width: 2,
      ),
      Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          // color: Color(0xffF2F2F2),
          color: color3,
        ),
      ),
    ],
  );
}