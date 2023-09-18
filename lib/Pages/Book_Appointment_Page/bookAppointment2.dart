import 'package:evo_plexus/Variables/AppBar.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:evo_plexus/Variables/Text_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Patient_List.dart';
import 'bookAppointment3.dart';

class BookAppointment2 extends StatefulWidget {
  const BookAppointment2({Key? key}) : super(key: key);

  @override
  State<BookAppointment2> createState() => _BookAppointment2State();
}

class _BookAppointment2State extends State<BookAppointment2> {

  final nameController = TextEditingController();
  final contactController = TextEditingController();
  final key = GlobalKey<FormState>();
  // bool isPasswordObscure = true;
  String _Name = '';
  String _Contact = '';


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
                        Form(
                          key: key,
                          child: Column(
                            children: [
                              Container(
                                color: Color(0xffFCFCFC),
                                width: width * 0.89,
                                height: height * 0.06,
                                child: TextFormField(
                                  controller: nameController,
                                  validator: (value) {
                                    // if (value == null || value.isEmpty) {
                                    //   return 'Please enter your email address';
                                    // }
                                    // // Check if the entered email has the right format
                                    // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                                    //   return 'Please enter a valid email address';
                                    // }
                                    // // Return null if the entered email is valid
                                    // return null;
                                  },
                                  // onChanged: (value) => _userName = value,
                                  textAlign: TextAlign.left,
                                  style: const TextStyle(
                                    color: Color(0xffBFBFBF),
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.only(top: 12.0),
                                    hintText: "Name",
                                    hintStyle: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xffBFBFBF),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/images/person.png"),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color(0xffF7F8F8),
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color(0xffF7F8F8),
                                        width: 1.0,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                color: Color(0xffFCFCFC),
                                width: width * 0.89,
                                height: height * 0.06,
                                child: TextFormField(
                                  controller: contactController,
                                  validator: (value) {
                                    // if (value == null || value.trim().isEmpty) {
                                    //   return 'This field is required';
                                    // }
                                    // if (value.trim().length < 8) {
                                    //   return 'Password must be at least 8 characters in length';
                                    // }
                                    // // Return null if the entered password is valid
                                    // return null;
                                  },
                                  // onChanged: (value) => _password = value,
                                  style: const TextStyle(
                                    color: Color(0xffBFBFBF),
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                  ),
                                  // obscureText: isPasswordObscure,
                                  // obscuringCharacter: '*',
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(
                                    hintText: "Contact number",
                                    contentPadding: EdgeInsets.only(top: 12.0),
                                    hintStyle: TextStyle(
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0xffBFBFBF),
                                    ),
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset("assets/images/Call_Ringing.png"),
                                    ),
                                    // suffixIcon: IconButton(
                                    //   child: Padding(
                                    //     padding: const EdgeInsets.all(8.0),
                                    //     child: Image.asset(
                                    //       isPasswordObscure
                                    //      ? 'assets/eye.png'
                                    //      :  'assets/eye.png',
                                    //     ),
                                    //   ),
                                    //   onPressed: (){}, icon: null,
                                    // ),
                                    // ),
                                    // suffixIcon: IconButton(
                                    //     icon: Icon(isPasswordObscure
                                    //         ? Icons.visibility
                                    //         : Icons.visibility_off),
                                    //     color: const Color(0xffBFBFBF),
                                    //     onPressed: () {
                                    //       setState(() {
                                    //         isPasswordObscure = !isPasswordObscure;
                                    //       });
                                    //     }),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color(0xffF7F8F8),
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Color(0xffF7F8F8),
                                        width: 1.0,
                                      ),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 1.0,
                                      ),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: const BorderSide(
                                        color: Colors.red,
                                        width: 1.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 220.0, top: 20, bottom: 20),
                          child: Text(
                            "Who’s this patient",
                            style: TextStyle(
                              color: Color(0xff025188),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        PatientList(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25.0),
                          child: GestureDetector(
                            onTap: (){
                              Get.to(BookAppointment3());
                            },
                              child: mainButton("Next",  Color(0xff4DA0E6), context)),
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
