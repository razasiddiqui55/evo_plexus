import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Variables/AppBar.dart';
import 'CardList.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.asset(
              "assets/images/bgimage.png",
              width: double.infinity,
            ).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            const AppBar1(
              title: "My Wallet",
              image: "assets/images/avator.png",
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child:Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.05,),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0,),
                    child: Text(
                      "My Balance",
                      style: TextStyle(
                        color: Color(0xff7E8CA0),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0, right: 3),
                              child: Image.asset("assets/images/usd.png", ),
                            ),
                            const Text(
                              "2,180",
                              style: TextStyle(
                                color: Color(0xff025188),
                                fontFamily: "Rubik",
                                fontWeight: FontWeight.w600,
                                fontSize: 36,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 3.0,),
                                child: Image.asset("assets/images/plus.png", ),
                              ),
                              const Text(
                                "Add amount",
                                style: TextStyle(
                                  color: Color(0xff4DA0E6),
                                  fontFamily: "Rubik",
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Payment method",
                      style: TextStyle(
                        color: Color(0xff025188),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  CardList(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      "Transaction",
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
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      // height: MediaQuery.of(context).size.height * 0.16,
                      width: width,
                      color: Colors.transparent,
                      height: height * 0.3, //300,
                      child: ListView.builder(
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          itemCount: menuList.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: GestureDetector(
                                onTap: (){Get.to("jh");},
                                child: Container(
                                  // height: MediaQuery.of(context).size.height * 0.4,
                                  // width: MediaQuery.of(context).size.width * 0.3,
                                  // width: 358,
                                  height: height * 0.1, //80,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(width: 1.0, color: Color(0xffF4F5F7)),
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              menuList[index].image,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 3.0),
                                                  child: Text(
                                                    menuList[index].title,
                                                    style: const TextStyle(
                                                      color: Color(0xff025188),
                                                      fontFamily: "Rubik",
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 16,
                                                    ),
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                                Text(
                                                  menuList[index].subTitle,
                                                  style: const TextStyle(
                                                    color: Color(0xff8C8C8C),
                                                    fontFamily: "Rubik",
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 12,
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        const Row(
                                          children: [
                                            Text(
                                              "-\$30,000",
                                              style: TextStyle(
                                                color: Color(0xffEE5452),
                                                fontFamily: "Rubik",
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}


List menuList = [
  _MenuItemList("assets/images/d1.png", "Dr.	Jane	N.	Dacks", '02 Mar 222', Colors.grey),
  _MenuItemList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _MenuItemList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.white38),
  _MenuItemList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.grey),
  _MenuItemList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _MenuItemList("assets/images/d1.png", "Dr. Iyan", 'dentist', Colors.white38),
  _MenuItemList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.grey),
  _MenuItemList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.black12),
];

class _MenuItemList {
  final String image;
  final String title;
  final String subTitle;
  final Color color;

  _MenuItemList(this.image, this.title, this.subTitle, this.color);
}
