// Initial Selected Value
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart'
    hide ModalBottomSheetRoute;
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../Variables/Text_Widget.dart';
import 'Reset_Password.dart';

Future bottomSheetPinCode(BuildContext context) {
  TextEditingController newTextEditingController = TextEditingController();
  final key = GlobalKey<FormState>();
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: StatefulBuilder(
          builder: (BuildContext context, StateSetter stateSetterObject) {
        return Container(
          width: width, //390,
          height: height * 0.5,//430,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            image: DecorationImage(
              image: Image.asset(
                "assets/images/bc2.png",
                width: double.infinity,
              ).image,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 15),
          Container(
            width: width * 0.35, //130,
            height: 5,
            decoration: BoxDecoration(
              color: const Color(0xffC4C4C4),
              borderRadius: BorderRadius.circular(25),
            ),
          ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                  minimumSize: const Size(
                    14,
                    14,
                  ),
                ),
                onPressed: () {
                  //   Navigator.pushReplacementNamed(context, '/registerType');
                  Get.back();
                },
                child: const Text(
                  'Click to Go Back',
                  style: TextStyle(
                      color: Color(0xff4DA0E6),
                      fontFamily: "Rubik",
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
              ),
            SizedBox(
            height: height * 0.01, //20,
            ),
              const Text(
                "Enter 4 Digits Code",
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: "Rubik",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: -0.3,
                ),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: descriptionText(
                  "Enter the 4 digits code that you received on \n your email.",
                  context,
                ),
              ),
               SizedBox(
                height: height * 0.05, //35,
              ),
              Form(
                key: key,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 80),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    controller: newTextEditingController,
                    cursorColor: Colors.black,
                    textStyle: const TextStyle(
                      fontSize: 14,
                      fontFamily: "Rubik",
                      fontWeight: FontWeight.w400,
                      color: Color(0xffBFBFBF),
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      fieldWidth: width * 0.1 , //48,
                      fieldHeight: height * 0.05, //48,
                      activeColor: const Color(0xffBFBFBF),
                      inactiveColor: const Color(0xffBFBFBF),
                      selectedColor: const Color(0xffBFBFBF),
                      borderWidth: 1,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onChanged: (String value) {},
                  ),
                ),
              ),
               SizedBox(
                height: height * 0.04, //40,
              ),
              GestureDetector(
                  onTap: () {
                    bottomSheetResetPassword(context);
                  },
                  child: mainButton("Continue", const Color(0xff4DA0E6), context)),
            ],
          ),
        );
      }),
    ),
  );
}