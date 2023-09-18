import 'package:evo_plexus/Variables/AppBar.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:evo_plexus/Variables/Text_Widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Bottom_bar.dart';
import 'bookAppointment2.dart';

class BookAppointment1 extends StatefulWidget {
  const BookAppointment1({Key? key}) : super(key: key);

  @override
  State<BookAppointment1> createState() => _BookAppointment1State();
}

class _BookAppointment1State extends State<BookAppointment1> {
  bool click = true;
  int? selectedIndex;

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
        // bottomNavigationBar: bottom_bar(),
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
                            padding:
                                const EdgeInsets.only(bottom: 3.0, left: 5),
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
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
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
                        doctoraboutText(
                            "Contrary to popular belief, Lorem Ipsum is not simply random text."
                            " It has roots in a piece of it over 2000 years old.",
                            context),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 5),
                          child: Text(
                            "Available Time Slots",
                            style: TextStyle(
                              color: Color(0xff025188),
                              fontFamily: "Rubik",
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        // Expanded(
                        //   child: Padding(
                        //     padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        //     child: GridView.builder(
                        //       itemCount: 6,
                        //       gridDelegate:
                        //           SliverGridDelegateWithFixedCrossAxisCount(
                        //               crossAxisCount: 3,
                        //               crossAxisSpacing: 10.0,
                        //               mainAxisSpacing: 10.0),
                        //       itemBuilder: (BuildContext context, int index) {
                        //         return Container(
                        //           width: 115,
                        //           height: 115,
                        //           decoration: BoxDecoration(
                        //             color: Colors.white,
                        //             borderRadius: BorderRadius.circular(25),
                        //             border: Border.all(
                        //               width: 1,
                        //               color: Color(0xffF2F2F2),
                        //             ),
                        //           ),
                        //           child: Column(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             crossAxisAlignment: CrossAxisAlignment.center,
                        //             children: [
                        //               Padding(
                        //                 padding: const EdgeInsets.only(bottom: 5.0),
                        //                 child: Text(
                        //                   "Tomorrow",
                        //                   style: TextStyle(
                        //                     fontFamily: "Rubik",
                        //                     fontWeight: FontWeight.bold,
                        //                     fontSize: 16,
                        //                     color: Colors.black,
                        //                   ),
                        //                   textAlign: TextAlign.center,
                        //                 ),
                        //               ),
                        //               Padding(
                        //                 padding: const EdgeInsets.only(bottom: 5.0),
                        //                 child: Text(
                        //                   "10 Feb 2023",
                        //                   style: TextStyle(
                        //                     fontFamily: "Rubik",
                        //                     fontWeight: FontWeight.w500,
                        //                     fontSize: 12,
                        //                     color: Color(0xff4DA0E6),
                        //                   ),
                        //                   textAlign: TextAlign.center,
                        //                 ),
                        //               ),
                        //               Text(
                        //                 "No slots\navailable",
                        //                 style: TextStyle(
                        //                   fontFamily: "Rubik",
                        //                   fontWeight: FontWeight.w400,
                        //                   fontSize: 12,
                        //                   color: Color(0xff8C8C8C),
                        //                 ),
                        //                 textAlign: TextAlign.center,
                        //               ),
                        //             ],
                        //           ),
                        //         );
                        //       },
                        //     ),
                        //   ),
                        // ),
                        Expanded(
                          flex: 2,
                          child: GridView.extent(
                            primary: false,
                            padding: const EdgeInsets.all(16),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            maxCrossAxisExtent: 115.0,
                            children: <Widget>[
                              Container(
                                width: width + 115, // 115,
                                height: height + 115,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF2F2F2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "10 Feb 2023",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff4DA0E6),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Text(
                                      "No slots\navailable",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff8C8C8C),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    click = !click;
                                  });
                                },
                                child: Container(
                                  width: 115,
                                  height: 115,
                                  decoration: BoxDecoration(
                                    color: (click == false)
                                        ? Color(0xff025188)
                                        : Color(0xffffffff),
                                    borderRadius: BorderRadius.circular(25),
                                    border: Border.all(
                                      width: 1,
                                      color: Color(0xffF2F2F2),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          "Tomorrow",
                                          style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: (click == false)
                                                ? Color(0xffffffff)
                                                : Color(0xff000000),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 5.0),
                                        child: Text(
                                          "10 Feb 2023",
                                          style: TextStyle(
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color(0xff4DA0E6),
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        "9 slots",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: (click == false)
                                              ? Color(0xffffffff)
                                              : Color(0xffEE5452),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        "available",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: (click == false)
                                              ? Color(0xffffffff)
                                              : Color(0xff8C8C8C),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF2F2F2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "10 Feb 2023",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff4DA0E6),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Text(
                                      "No slots\navailable",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff8C8C8C),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF2F2F2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "10 Feb 2023",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff4DA0E6),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Text(
                                      "No slots\navailable",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff8C8C8C),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF2F2F2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "10 Feb 2023",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff4DA0E6),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Text(
                                      "9 slots",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xffEE5452),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Text(
                                      "available",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff8C8C8C),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 115,
                                height: 115,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(
                                    width: 1,
                                    color: Color(0xffF2F2F2),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "Tomorrow",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 5.0),
                                      child: Text(
                                        "10 Feb 2023",
                                        style: TextStyle(
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          color: Color(0xff4DA0E6),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Text(
                                      "No slots\navailable",
                                      style: TextStyle(
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Color(0xff8C8C8C),
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        click == true
                            ? SizedBox(
                                height: 0,
                                width: 0,
                              )
                            : Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                    ),
                                    child: Text(
                                      "Afternoon Slots",
                                      style: TextStyle(
                                        color: Color(0xff025188),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 7),
                                    child: Container(
                                      // height: MediaQuery.of(context).size.height * 0.16,
                                      width: double.infinity,
                                      height: 45,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: afterNoonTimeList.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 10),
                                              child: GestureDetector(
                                                onTap: (){
                                                  setState(() {
                                                    selectedIndex = index;
                                                    print("selectedIndex $selectedIndex");
                                                  });
                                                },
                                                child: Container(
                                                  // height: MediaQuery.of(context).size.height * 0.4,
                                                  // width: MediaQuery.of(context).size.width * 0.3,
                                                  width: 79,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(32),
                                                    color:  selectedIndex == index ?  Color(0xff4DA0E6) : Colors.white,
                                                    border: Border.all(
                                                        color: Color(0xffE9F2F1),
                                                        width: 1),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(8.0),
                                                    child: Text(
                                                      afterNoonTimeList[index]
                                                          .text,
                                                      style: TextStyle(
                                                        fontFamily: "Rubik",
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 14,
                                                        color: Color(0xff595959),
                                                      ),
                                                      textAlign: TextAlign.center,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 15.0,
                                    ),
                                    child: Text(
                                      "Evenings Slots",
                                      style: TextStyle(
                                        color: Color(0xff025188),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0, vertical: 7),
                                    child: Container(
                                      // height: MediaQuery.of(context).size.height * 0.16,
                                      width: double.infinity,
                                      height: 45,
                                      child: ListView.builder(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: eveningTimeList.length,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 8.0, top: 10),
                                              child: Container(
                                                // height: MediaQuery.of(context).size.height * 0.4,
                                                // width: MediaQuery.of(context).size.width * 0.3,
                                                width: 79,
                                                height: 40,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(32),
                                                  color: Colors.white,
                                                  border: Border.all(
                                                      color: Color(0xffE9F2F1),
                                                      width: 1),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Text(
                                                    eveningTimeList[index].text,
                                                    style: TextStyle(
                                                      fontFamily: "Rubik",
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 14,
                                                      color: Color(0xff595959),
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  ),
                                ],
                              ),
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: GestureDetector(
                                    onTap: (){
                                      Get.to(BookAppointment2());
                                    },
                                    child: mainButton("Book appointment ",
                                        (click == false) ? Color(0xff025188) :Color(0xff8C8C8C), context),
                                  )),
                              SizedBox(
                                height: 9,
                              ),
                              mainButton("Contact to Clinic", Color(0xff4DA0E6),
                                  context),
                            ],
                          ),
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

List afterNoonTimeList = [
  _TimeSlotList("1:00pm"),
  _TimeSlotList("1:30pm"),
  _TimeSlotList("2:00pm"),
  _TimeSlotList("2:30pm"),
];

class _TimeSlotList {
  final String text;

  _TimeSlotList(this.text);
}

List eveningTimeList = [
  _TimeSlotList("5:00pm"),
  _TimeSlotList("5:30pm"),
  _TimeSlotList("6:00pm"),
  _TimeSlotList("6:30pm"),
];

class _TimeSlotList2 {
  final String text;

  _TimeSlotList2(this.text);
}
