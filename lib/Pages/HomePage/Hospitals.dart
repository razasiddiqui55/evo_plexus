import 'package:flutter/material.dart';

class HospitalsList extends StatefulWidget {
  @override
  _HospitalsListState createState() => _HospitalsListState();
}

class _HospitalsListState extends State<HospitalsList> {
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
                itemCount: hospitalList.length,
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
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          children: [
                            Image.asset(
                              hospitalList[index].image,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  hospitalList[index].title,
                                  style: TextStyle(
                                    color: Color(0xff025188),
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: Text(
                                    hospitalList[index].subTitle,
                                    style: TextStyle(
                                      color: Color(0xff8C8C8C),
                                      fontFamily: "Rubik",
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      fontStyle: FontStyle.italic,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
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

List hospitalList = [
  _hospitalList(
      "assets/images/hosp1.png", "Richmond\nHospital", 'dentist', Colors.grey),
  _hospitalList(
      "assets/images/hosp2.png", "Delta\nHospital", 'dentist', Colors.black12),
  _hospitalList(
      "assets/images/hosp3.png", "Dr. Iyan", 'dentist', Colors.white38),
  _hospitalList("assets/images/hosp1.png", "Dr. Iyan", 'dentist', Colors.red),
  _hospitalList(
      "assets/images/hosp2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _hospitalList(
      "assets/images/hosp3.png", "Dr. Iyan", 'dentist', Colors.white38),
];

class _hospitalList {
  final String image;
  final String title;
  final String subTitle;
  final Color color;

  _hospitalList(this.image, this.title, this.subTitle, this.color);
}
