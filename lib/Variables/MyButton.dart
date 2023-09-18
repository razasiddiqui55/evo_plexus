import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../Pages/Onboarding-Screen/Onboarding_2.dart';

Widget mainButton(text,color,BuildContext context, ) {

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Container(
      height: MediaQuery.of(context).size.height*0.07,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          // color: Color(0xff4DA0E6),
          color: color,
          borderRadius: BorderRadius.circular(12),
      ),
      child:  Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Text(text,
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
      ),

    ),
  );
}


Widget drawersButton(image, text, BuildContext context) {
  return Container(
    height: 114,
    width: 114,
    decoration: BoxDecoration(
        color: Color(0xff0084F3),
        borderRadius: BorderRadius.circular(25)
    ),
    child:  Column(
      children: [
        SizedBox(height: 25,),
        Image.asset(image),
        Text(text,style: TextStyle(
          color: Color(0xffffffff),
          fontFamily: "Rubik",
          fontSize: 14,
          fontWeight: FontWeight.w400,
          // letterSpacing: -0.3,
        ),
        textAlign: TextAlign.center,),
      ],
    ),
  );
}

