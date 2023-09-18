import 'package:flutter/material.dart' hide ModalBottomSheetRoute;

Widget descriptionText(text,   BuildContext context) {
  return Text(text,
      style: TextStyle(
          fontFamily: "Rubik",
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Color(0xff595959),
        height: 1.30,
      ),
    textAlign: TextAlign.center,
  );
}

Widget paragraphText(text,   BuildContext context) {
  return Text(text,
    style: TextStyle(
      fontFamily: "Rubik",
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Color(0xff595959),
      height: 1.30,
    ),
    textAlign: TextAlign.center,
  );
}

Widget doctoraboutText(text,   BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
    child: Text(text,
      style: TextStyle(
        fontFamily: "Rubik",
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xff595959),
        height: 1.30,
      ),
      textAlign: TextAlign.left,
    ),
  );
}

Widget headaingText(text, BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(right: 3.0,bottom: 5),
    child: Text(
      text,
      style: TextStyle(
        color: Color(0xff025188),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  );
}

Widget h2Text(text, BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(bottom: 5.0, ),
    child: Text(
      text,
      style: TextStyle(
        color: Color(0xff4DA0E6),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ),
  );
}

Widget smallText(text, BuildContext context){
  return Padding(
    padding: const EdgeInsets.only(bottom: 5.0),
    child: Text(
      text,
      style: TextStyle(
        color: Color(0xff000000),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w500,
        fontSize: 14,
      ),
    ),
  );
}

Widget serviceText(text1, text2, BuildContext context){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
    child: Row(children: [
      Text(
        text1,
        style: TextStyle(
          color: Color(0xff4DA0E6),
          fontFamily: "Rubik",
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
      Text(
       text2,
        style: TextStyle(
          color: Color(0xff8C8C8C),
          fontFamily: "Rubik",
          fontWeight: FontWeight.w500,
          fontSize: 13,
        ),
      ),
    ],),
  );
}





