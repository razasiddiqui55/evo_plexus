import 'package:flutter/material.dart';

class Patient extends StatefulWidget {
  @override
  _PatientState createState() => _PatientState();
}

class _PatientState extends State<Patient> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.16,
        width: double.infinity,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: menuList.length,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.7,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            menuList[index].image,
                          ),
                          Text(
                            menuList[index].title,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15,
                    right: 0,
                    child: Image.asset(menuList[index].image2,),),
                ],
              );
            }),
      ),
    );
  }
}

List menuList = [
  _MenuItemList(
    "assets/images/right.png",
    "assets/images/patient1.png",
    "my self",
  ),
  _MenuItemList(
    "assets/images/right.png",
    "assets/images/patient1.png",
    "my wife",
  ),
];

class _MenuItemList {
  final String image;
  final String image2;
  final String title;

  _MenuItemList(this.image2,  this.image, this.title,);
}
