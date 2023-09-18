import 'package:flutter/material.dart';

class PatientList extends StatefulWidget {
  @override
  _PatientListState createState() => _PatientListState();
}

class _PatientListState extends State<PatientList> {
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
    "assets/images/pluss.png",
    "Add",
  ),
  _MenuItemList(
    "assets/images/right.png",
    "assets/images/patient1.png",
    "my self",
  ),
  _MenuItemList(
    "assets/images/right2.png",
    "assets/images/patient1.png",
    "my child",
  ),
  _MenuItemList(
    "assets/images/right2.png",
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
