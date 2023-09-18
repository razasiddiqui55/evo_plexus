import 'package:evo_plexus/Variables/Text_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../Variables/AppBar.dart';
import 'Doctor_Profile_Details.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness:Brightness.dark,
      statusBarColor: Colors.white,
    ));
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset(
                    "assets/images/bgimage.png",
                    width: width,
                  ).image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                children: [
                  AppBar3(title: "Profile",),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "Set up your profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Text(
                    "Update your profile to connect your doctor with \n better impression.",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: height * 0.08, //65,
                  ),
                   Container(
                      width: width,
                       height: height * 0.70, //600,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Center(
                          child: SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: height * 0.08,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    headaingText("Profile completion", context),
                                    headaingText("30%", context),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                                  child: new LinearPercentIndicator(
                                    barRadius: Radius.circular(25),
                                    width: MediaQuery.of(context).size.width - 40,
                                    animation: true,
                                    lineHeight: 10.0,
                                    animationDuration: 2500,
                                    percent: 0.3,
                                    // center: Text("80.0%"),
                                    linearStrokeCap: LinearStrokeCap.roundAll,
                                    progressColor: Color(0xffEE5452),
                                    backgroundColor: Color(0xffF2F2F2),
                                  ),
                                ),
                                Row(
                                  children: [
                                    headaingText("Basic Information", context),
                                    GestureDetector(
                                      onTap: (){
                                        Get.to(DoctorProfileDetails());
                                      },
                                        child: Image.asset("assets/images/edit.png")),
                                  ],
                                ),
                                h2Text("Email", context),
                                smallText("JovancaAzalea@email.com", context),
                                h2Text("Phone number", context),
                                smallText("(302) 555-0107", context),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    h2Text("Gender", context),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 60.0),
                                      child: h2Text("Date of Birth", context),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    smallText("-", context),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135.0),
                                      child: smallText("-", context),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    headaingText("Location", context),
                                    Image.asset("assets/images/edit.png"),
                                  ],
                                ),
                                h2Text("Address 1", context),
                                smallText("-", context),
                                h2Text("Address 2", context),
                                smallText("-", context),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    headaingText("Physical Information", context),
                                    Image.asset("assets/images/edit.png"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    h2Text("Height", context),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 95.0),
                                      child: h2Text("Weight", context),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    smallText("-", context),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135.0),
                                      child: smallText("-", context),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    h2Text("Measurement Unit", context),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 95.0),
                                      child: h2Text("Ethnicity", context),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    smallText("-", context),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 135.0),
                                      child: smallText("-", context),
                                    ),
                                  ],
                                ),
                                h2Text("Comorbidity", context),
                                smallText("-", context),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            Positioned(
              top: 160,
                left: 138,
                child:
                Image.asset("assets/images/avator2.png"),),
                Positioned( top: 230, left: 230, child: Image.asset("assets/images/picture.png", width: 32, height: 32,),)
          ],
        )
    );
  }
}
