import 'package:evo_plexus/Variables/Drawer_button.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Variables/Circle_Avater.dart';
import '../Bottom_bar.dart';

class SideMenuPage extends StatelessWidget {
  const SideMenuPage({Key? key}) : super(key: key);

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
              "assets/images/drawerbg.png",
              width: width,
            ).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.07,),
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0, ),
                child: Image.asset("assets/images/cross.png"),
              ),
            ),
            SizedBox(height: height * 0.05,),
            Center(child: Container(
                child: avatorButton2(context))),
            SizedBox(height: 5,),
            Center(
              child: Text(
                "Jovanca Azalea",
                style: TextStyle(
                  color: Color(0xff025188),
                  fontFamily: "Rubik",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  // letterSpacing: -0.3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 5,),
            Center(
              child: Text(
                "curtis.weaver@gmail.com",
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontFamily: "Rubik",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  // letterSpacing: -0.3,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: height * 0.04,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            drawersButton("assets/images/calendar.png", "My \n appointments", context),
            SizedBox(width: 5,),
            drawersButton("assets/images/coin.png", "Payment", context),
                SizedBox(width: 5,),
            drawersButton("assets/images/doctor.png", "My Doctors", context),
            ],),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                drawersButton("assets/images/about.png", "About us", context),
                SizedBox(width: 5,),
                drawersButton("assets/images/call.png", "Contact us", context),
                SizedBox(width: 5,),
                drawersButton("assets/images/setting.png", "Setting", context),
              ],),
            SizedBox(height: 5,),
            Center(child: drawersButton("assets/images/Sign-out.png", "Logout", context)),
          ],
        )
      ),
    );
  }
}
