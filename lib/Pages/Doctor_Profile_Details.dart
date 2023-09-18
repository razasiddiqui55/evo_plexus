import 'package:evo_plexus/Pages/Book_Appointment_Page/bookAppointment1.dart';
import 'package:evo_plexus/Variables/AppBar.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:evo_plexus/Variables/Text_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Bottom_bar.dart';

class DoctorProfileDetails extends StatefulWidget {
  const DoctorProfileDetails({Key? key}) : super(key: key);

  @override
  State<DoctorProfileDetails> createState() => _DoctorProfileDetailsState();
}

class _DoctorProfileDetailsState extends State<DoctorProfileDetails> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: Image.asset(
            "assets/images/bgimage.png",
            width: width,
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
                  AppBar4(image: "assets/images/fillheart.png"),
                  Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 3.0, left: 5),
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
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 5.0),
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
                        ),
                        Center(
                          child: RatingBarIndicator(
                            rating: 4.00,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            itemCount: 5,
                            itemSize: 20.0,
                            direction: Axis.horizontal,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                          child: Text(
                            "About",
                            style: TextStyle(
                              color: Color(0xff025188),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        doctoraboutText("Contrary to popular belief, Lorem Ipsum is not simply random text."
                            " It has roots in a piece of it over 2000 years old.", context),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0,),
                          child: Row(
                            children: [
                              Text(
                                "\$",
                                style: TextStyle(
                                  color: Color(0xff4DA0E6),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "28.00/hr",
                                style: TextStyle(
                                  color: Color(0xff025188),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(child: GestureDetector(
                          onTap: (){
                            Get.to(BookAppointment1());
                          },
                            child: mainButton("Book Now",Color(0xff4DA0E6), context))),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                          child: Text(
                            "Services ",
                            style: TextStyle(
                              color: Color(0xff025188),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                       serviceText("1. ", "Patient care should be the number one priority.", context),
                        Divider(
                          indent: 20,
                          endIndent: 40,
                          // color: Color(0xff677294),
                        ),
                        serviceText("2. ", "If you run your practiceyou know how frustrating.", context),
                        Divider(
                          indent: 20,
                          endIndent: 40,
                          // color: Color(0xff677294),
                        ),
                        serviceText("3. ", "That’s why some of appointment reminder system.", context),
                        Center(
                          child: Container(
                            // width: 335,
                            // height: 210,
                            child: Image.asset("assets/images/map.png"),
                            // decoration: BoxDecoration(
                            //   // color: Colors.green,
                            //   // borderRadius: BorderRadius.circular(25),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
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
