import 'package:flutter/material.dart';

class DoctorsList extends StatefulWidget {
  @override
  _DoctorsListState createState() => _DoctorsListState();
}

class _DoctorsListState extends State<DoctorsList> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
          child: Container(
            // height: MediaQuery.of(context).size.height * 0.16,
            width: width,
            height: height * 0.1, //88,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: doctorList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.4,
                      // width: MediaQuery.of(context).size.width * 0.3,
                      width: 150,
                      height: height * 0.1, //88,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: Color(0xffF2F2F2), width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Image.asset(
                              doctorList[index].image,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  doctorList[index].title,
                                  style: TextStyle(
                                    color: Color(0xff025188),
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  doctorList[index].subTitle,
                                  style: TextStyle(
                                    color: Color(0xff8C8C8C),
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}

List doctorList = [
  _doctorList("assets/images/d1.png", "Dr. Iyan", 'dentist', Colors.grey),
  _doctorList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _doctorList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.white38),
  _doctorList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.grey),
  _doctorList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _doctorList("assets/images/d1.png", "Dr. Iyan", 'dentist', Colors.white38),
  _doctorList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.grey),
  _doctorList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.black12),
];

class _doctorList {
  final String image;
  final String title;
  final String subTitle;
  final Color color;

  _doctorList(this.image, this.title, this.subTitle, this.color);
}
