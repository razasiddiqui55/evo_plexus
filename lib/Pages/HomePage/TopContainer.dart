import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Variables/Circle_Avater.dart';
import '../../Variables/Drawer_button.dart';
import '../Side_menu/Side_menu.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.to(const SideMenuPage());
              },
              child: Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: drawerButton(context)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: avatorButton(context),
            ),
          ],
        ),
        SizedBox(
          height: height * 0.04,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            Row(
              children: [
                const Text(
                  "Welcome..!",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Asap",
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.left,
                ),
                Container(
                    child: SvgPicture.asset(
                        "assets/images/notification.svg")),
              ],
            ),
            const Text(
              "Wade Warren",
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Asap",
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
              textAlign: TextAlign.left,
            ),
            const Text(
              "How is it going today?",
              style: TextStyle(
                color: Color(0xff025188),
                fontFamily: "Asap",
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(
          width: width * 0.07,
        ),
        Column(
          children: [
            Container(
              child: Image.asset("assets/images/isolation.png"),
            ),
          ],
        ),
      ],
    );
  }
}
