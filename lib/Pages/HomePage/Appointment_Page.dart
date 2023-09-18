import 'package:flutter/material.dart';

class AppointmentList extends StatefulWidget {
  @override
  _AppointmentListState createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.16,
        // width: 358,
        height: 150,
        child: ListView.builder(
            // physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            // scrollDirection: Axis.vertical,
            // physics: BouncingScrollPhysics(),
            itemCount: appointmentList.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                    // height: MediaQuery.of(context).size.height * 0.4,
                    // width: MediaQuery.of(context).size.width * 0.3,
                    width: 358,
                    height: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Color(0xffF2F2F2), width: 1),
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        VerticalDivider(
                          color: Color(0xff4DA0E6),
                          thickness: 2.0,
                          indent: 20,
                          endIndent: 20,
                        ),
                        Column(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 12.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 5.0, bottom: 5.0),
                                        child: Text(
                                          "Appointment date",
                                          style: TextStyle(
                                            color: Color(0xff8C8C8C),
                                            fontFamily: "Rubik",
                                            fontWeight: FontWeight.w400,
                                            fontSize: 12,
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                              width: 16,
                                              height: 16,
                                              child: Image.asset(
                                                  "assets/images/clock.png")),
                                          Text(
                                            "Wed Nov 20",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 5.0),
                                            child: Container(
                                                width: 4,
                                                height: 4,
                                                child: Image.asset(
                                                    "assets/images/dot.png")),
                                          ),
                                          Text(
                                            "8:00 - 8:30 AM",
                                            style: TextStyle(
                                              color: Color(0xff000000),
                                              fontFamily: "Rubik",
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                      width: 24,
                                      height: 24,
                                      child: Image.asset(
                                          "assets/images/more-vertical.png")),
                                ],
                              ),
                            ),
                            // Divider(
                            //   color: Color(0xffE9ECF2),
                            //   height: 20,
                            //   indent: 15,
                            //   endIndent: 15,
                            //   thickness: 1.0,
                            // ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Container(
                                width: 296,
                                height: 1,
                                decoration: BoxDecoration(
                                  color: Color(0xffE9ECF2),
                                  border: Border.all(
                                    color: Color(0xffE9ECF2),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15.0, top: 15),
                              child: Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                        appointmentList[index].image,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 25, top: 20.0),
                                        child: Image.asset(
                                          "assets/images/camera.png",
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        appointmentList[index].title,
                                        style: TextStyle(
                                          color: Color(0xff000000),
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        appointmentList[index].subTitle,
                                        style: TextStyle(
                                          color: Color(0xff8C8C8C),
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )),
              );
            }),
      ),
    );
  }
}

List appointmentList = [
  _appointmentList(
      "assets/images/hosp1.png", "Dr. Prem Tiwari", 'dentist', Colors.grey),
  _appointmentList(
      "assets/images/hosp2.png", "Dr. Prem Tiwari", 'dentist', Colors.black12),
  _appointmentList(
      "assets/images/hosp3.png", "Dr. Iyan", 'dentist', Colors.white38),
  _appointmentList("assets/images/hosp1.png", "Dr. Iyan", 'dentist', Colors.red),
  _appointmentList(
      "assets/images/hosp2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _appointmentList(
      "assets/images/hosp3.png", "Dr. Iyan", 'dentist', Colors.white38),
];

class _appointmentList {
  final String image;
  final String title;
  final String subTitle;
  final Color color;

  _appointmentList(this.image, this.title, this.subTitle, this.color);
}

//
//
//
