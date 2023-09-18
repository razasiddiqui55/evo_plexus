// Initial Selected Value
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart' hide ModalBottomSheetRoute;
import '../../Variables/Text_Widget.dart';

Future bottomSheetResetPassword(BuildContext context) {
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();
  final key = GlobalKey<FormState>();
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  bool isPasswordObscure = true;
  bool isPassworconfirmdObscure = true;
  return showMaterialModalBottomSheet(
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) => SingleChildScrollView(
      controller: ModalScrollController.of(context),
      child: StatefulBuilder(
          builder: (BuildContext context, StateSetter stateSetterObject) {
        return Container(
          width: width, //390,
          height: height * 0.6, // 515,
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
              fit: BoxFit.fill,
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
                "Reset Password",
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
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
                child: descriptionText(
                  "Set the new password for your account so \n you can login and access all the features.",
                  context,
                ),
              ),
              SizedBox(
                height: height * 0.05, //35,
              ),
              Form(
                key: key,
                child: Column(children: [
                  SizedBox(
                    width: width * 0.89,
                    height: height * 0.06,
                    child: TextFormField(
                      controller: passwordController,
                      validator: (value) {
                        // if (value == null || value.trim().isEmpty) {
                        //   return 'This field is required';
                        // }
                        // if (value.trim().length < 8) {
                        //   return 'Password must be at least 8 characters in length';
                        // }
                        // // Return null if the entered password is valid
                        // return null;
                      },
                      // onChanged: (value) => _password = value,
                      style: const TextStyle(
                        color: Color(0xffBFBFBF),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      obscureText: isPasswordObscure,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        contentPadding: const EdgeInsets.only(top: 10.0),
                        hintStyle: const TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffBFBFBF),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/lock.png"),
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(isPasswordObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: const Color(0xffBFBFBF),
                            onPressed: () {
                              stateSetterObject(() {
                                isPasswordObscure = !isPasswordObscure;
                              });
                            }),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                            width: 1.0,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: width * 0.89,
                    height: height * 0.06,
                    child: TextFormField(
                      controller: confirmpasswordController,
                      validator: (value) {
                        // if (value == null || value.trim().isEmpty) {
                        //   return 'This field is required';
                        // }
                        // if (value.trim().length < 8) {
                        //   return 'Password must be at least 8 characters in length';
                        // }
                        // // Return null if the entered password is valid
                        // return null;
                      },
                      // onChanged: (value) => _confirmpassword = value,
                      style: const TextStyle(
                        color: Color(0xffBFBFBF),
                        fontFamily: "Rubik",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      obscureText: isPasswordObscure,
                      obscuringCharacter: '*',
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: "Confirm new password",
                        contentPadding: const EdgeInsets.only(top: 10.0),
                        hintStyle: const TextStyle(
                          fontFamily: "Rubik",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xffBFBFBF),
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset("assets/images/lock.png"),
                        ),
                        suffixIcon: IconButton(
                            icon: Icon(isPassworconfirmdObscure
                                ? Icons.visibility
                                : Icons.visibility_off),
                            color: const Color(0xffBFBFBF),
                            onPressed: () {
                              stateSetterObject(() {
                                isPassworconfirmdObscure =
                                    !isPassworconfirmdObscure;
                              });
                            }),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color(0xffBFBFBF),
                            width: 1.0,
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Colors.red,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: height * 0.05, //40,
              ),
              GestureDetector(
                  onTap: () {},
                  child:
                      mainButton("Rest Password", const Color(0xff4DA0E6), context)),
            ],
          ),
        );
      }),
    ),
  );
}
