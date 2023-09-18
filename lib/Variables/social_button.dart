import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;

Widget socialButtons(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          margin: const EdgeInsets.only(left: 30, right: 0, bottom: 20),
          // height: MediaQuery.of(context).size.height * 0.07,
          // width: MediaQuery.of(context).size.width * 0.25,
          width: 160,
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/images/google.png",
                ),
              ),
              Text(
                "Google",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontSize: 16,
                    color: Color(0xff8C8C8C),
                    fontWeight: FontWeight.w300),
              )
            ],
          )),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 30, bottom: 20),
        // height: MediaQuery.of(context).size.height * 0.07,
        // width: MediaQuery.of(context).size.width * 0.25,
        width: 160,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/images/fb.png",
              ),
            ),
            Text(
              "Facebook",
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 16,
                  color: Color(0xff8C8C8C),
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget socialButtonsapple(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
          margin: const EdgeInsets.only(left: 30, right: 0, bottom: 20),
          // height: MediaQuery.of(context).size.height * 0.07,
          // width: MediaQuery.of(context).size.width * 0.25,
          width: 160,
          height: 54,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.06),
                spreadRadius: 2,
                blurRadius: 3,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/images/apple.png",
                ),
              ),
              Text(
                "Apple",
                style: TextStyle(
                    fontFamily: "Rubik",
                    fontSize: 16,
                    color: Color(0xff8C8C8C),
                    fontWeight: FontWeight.w300),
              )
            ],
          )),
      Container(
        margin: const EdgeInsets.only(left: 10, right: 30, bottom: 20),
        // height: MediaQuery.of(context).size.height * 0.07,
        // width: MediaQuery.of(context).size.width * 0.25,
        width: 160,
        height: 54,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.06),
              spreadRadius: 2,
              blurRadius: 3,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image.asset(
                "assets/images/fb.png",
              ),
            ),
            Text(
              "Facebook",
              style: TextStyle(
                  fontFamily: "Rubik",
                  fontSize: 16,
                  color: Color(0xff8C8C8C),
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    ],
  );
}