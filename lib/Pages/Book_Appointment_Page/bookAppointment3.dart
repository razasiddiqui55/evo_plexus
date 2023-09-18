import 'package:evo_plexus/Variables/AppBar.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:evo_plexus/Variables/Text_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Patient.dart';
import 'Patient_List.dart';

class BookAppointment3 extends StatefulWidget {
  const BookAppointment3({Key? key}) : super(key: key);

  @override
  State<BookAppointment3> createState() => _BookAppointment3State();
}

class _BookAppointment3State extends State<BookAppointment3> {


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            "assets/images/bgimage.png",
            width: double.infinity,
          ).image,
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                children: [
                  AppBar4(image: "assets/images/heart.png"),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 300.0, top: 10),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                  color: Color(0xffF2F2F2), width: 1),
                            ),
                            child: Image.asset(
                              "assets/images/Comment.png",
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(bottom: 5.0, left: 5),
                          child: Text(
                            "Dr. Pediatrician",
                            style: TextStyle(
                              color: Color(0xff025188),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5.0, bottom: 5),
                          child: Text(
                            "Specialist Cardiologist ",
                            style: TextStyle(
                              color: Color(0xff8C8C8C),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        RatingBarIndicator(
                          rating: 4.00,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        SizedBox(height: 20,),
                        Container(
                          width: width * 0.9,//358,
                          height: height * 0.2, // 133,
                          decoration: BoxDecoration(
                            color: Color(0xff025188),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Appointment Date",
                                      style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: Color(0xff4DA0E6)),
                                    ),
                                    Container(
                                      width: width * 0.2, // 81,
                                      height: height * 0.04, //33,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Color(0xff4DA0E6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "Change",
                                          style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14,
                                            color: Color(0xffffffff),),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Friday,",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18,
                                        color: Color(0xffffffff),),
                                    ),
                                    Text(
                                      "10 Feb 2023",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 24,
                                        color: Color(0xffffffff),),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0, top: 10),
                                child: Row(
                                  children: [
                                    Text(
                                      "Time",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Color(0xff4DA0E6,),),
                                    ),
                                    SizedBox(width: 5,),
                                    Text(
                                      "2:00 pm",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Color(0xffffffff),),
                                    ),
                                    SizedBox(width: 10,),
                                    Text(
                                      "afternoon",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 20,
                                        color: Color(0xffffffff),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 220.0, top: 20, bottom: 20),
                          child: Text(
                            "Appointment For",
                            style: TextStyle(
                              color: Color(0xff025188),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                       Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           h2Text("Full name", context),
                           smallText("Jovanca Azalea", context),
                           h2Text("Contact number", context),
                           smallText("+1 234 567", context),
                           Padding(
                             padding: const EdgeInsets.only(right: 290.0, top: 20, bottom: 20),
                             child: Text(
                               "Patient",
                               style: TextStyle(
                                 color: Color(0xff025188),
                                 fontFamily: "Rubik",
                                 fontWeight: FontWeight.w600,
                                 fontSize: 16,
                               ),
                               textAlign: TextAlign.left,
                             ),
                           ),
                         ],
                       ),
                        Patient(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25.0),
                          child: GestureDetector(
                            onTap: (){
                              Get.dialog(
                                Material(
                                  color: Color(0xff0f172a).withOpacity(0.3),
                                  child: Center(
                                    child: Container(
                                        width: width * 0.9,//358,
                                        height: height * 0.6, // 479,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(25),
                                          color: Colors.white,
                                        ),
                                        child:   Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(top: 5, right: 5),
                                              child: IconButton(onPressed: (){
                                                Get.back();
                                              }, icon: Icon(Icons.clear_rounded),),
                                            ),
                                            Center(child: Image.asset("assets/images/like.png")),
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                                child: Text(
                                                  "Thank You !",
                                                  style: TextStyle(
                                                    color: Color(0xff025188),
                                                    fontFamily: "Rubik",
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 38,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Text(
                                                "Your Appointment Successful",
                                                style: TextStyle(
                                                  color: Color(0xff8C8C8C),
                                                  fontFamily: "Rubik",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: 15.0),
                                                child: Text(
                                                  "You booked an appointment with Dr.\n"
                                                      "Pediatrician Purpieson on February 21,\nat 02:00 PM",
                                                  style: TextStyle(
                                                    color: Color(0xff000000),
                                                    fontFamily: "Rubik",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                            ),
                                            mainButton("Edit your appointment", Color(0xff4DA0E6), context)
                                          ],
                                        )
                                    ),
                                  ),
                                )
                              );
                            },
                              child: mainButton("Confirm",  Color(0xff4DA0E6), context)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                top: 50,
                left: 138,
                child: Image.asset("assets/images/doctorg.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
