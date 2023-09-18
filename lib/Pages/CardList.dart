import 'package:flutter/material.dart';

class CardList extends StatefulWidget {
  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
      child: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height * 0.16,
            width: width,
            height: height * 0.2,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: menuList.length,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 80,
                          top: -2,
                          // top: 22,
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1, color: Color(0xffF2F2F2),),
                            ),
                          ),),
                        Positioned(
                          left: 100,
                          top: 20,
                          // top: 22,
                          child: Container(
                            width: 17,
                            height: 17,
                            decoration: BoxDecoration(
                              color: Color(0xffF6F7FA),
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 1, color: Color(0xffF2F2F2),),
                            ),
                          ),),
                        Positioned(
                          top: height * 0.08,
                          right: 3,
                          child: Container(
                            width: 35,
                            height: 35,
                            child: Image.asset("assets/images/circle.png"),
                            // decoration: BoxDecoration(
                            //   color: Colors.white,
                            //   borderRadius: BorderRadius.circular(25),
                            //   border: Border.all(width: 1, color: Color(0xffF2F2F2),),
                            // ),
                          ),),
                        Container(
                          // height: MediaQuery.of(context).size.height * 0.4,
                          // width: MediaQuery.of(context).size.width * 0.3,
                          width: 136,
                          height:  104,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Color(0xffF2F2F2), width: 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0, top: 20),
                                child: Image.asset(
                                  menuList[index].image,  width: 32, height: 25,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 8.0, bottom: 7.0),
                                      child: Text(
                                        menuList[index].title,
                                        style: TextStyle(
                                          color: Color(0xff025188),
                                          fontFamily: "Rubik",
                                          fontWeight: FontWeight.w500,
                                          fontSize: 30,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      menuList[index].subTitle,
                                      style: TextStyle(
                                        color: Color(0xff025188),
                                        fontFamily: "Rubik",
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  );
                }),
          ),
        ],
      )
    );
  }
}

List menuList = [
  _MenuItemList( "assets/images/ApplePay.png", "....", '8127'),
  _MenuItemList( "assets/images/visa.png", "....", '8127' ),
  // _MenuItemList( "assets/images/plusbig.png", "Add Card", '8127'),
  // _MenuItemList( "assets/images/hosp1.png", "Dr. Iyan", 'dentist'),
  // _MenuItemList( "assets/images/hosp2.png", "Dr. Iyan", 'dentist'),
  // _MenuItemList( "assets/images/hosp3.png", "Dr. Iyan", 'dentist'),
];

class _MenuItemList {
  final String image;
  final String title;
  final String subTitle;

  _MenuItemList(this.image, this.title, this.subTitle,);
}
