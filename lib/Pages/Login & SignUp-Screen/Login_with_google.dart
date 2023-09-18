import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:evo_plexus/Variables/Text_Widget.dart';
import 'package:evo_plexus/Variables/social_button.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:get/get.dart';
import '../Bottom_bar.dart';
import 'Forgot_password.dart';
import 'Login&SignUpWidget.dart';
import 'SignUp_with_google.dart';

class LoginwithGoogle extends StatefulWidget {
  LoginwithGoogle({Key? key}) : super(key: key);

  @override
  State<LoginwithGoogle> createState() => _LoginwithGoogleState();
}

class _LoginwithGoogleState extends State<LoginwithGoogle> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final key = GlobalKey<FormState>();
  bool isPasswordObscure = true;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(
                "assets/images/bc.png",
                width: width,
              ).image,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.09,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              const Text(
                "Welcome back",
                style: TextStyle(
                  color: Color(0xff000000),
                  // fontFamily: "Rubik",
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: -0.3,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: paragraphText(
                  "Amet minim mollit non deserunt ullamco est \n sit aliqua dolor do amet sint. Velit officia",
                  context,
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Form(
                key: key,
                child: Column(
                  children: [
                    EmailTextField(context),
                    const SizedBox(
                      height: 15,
                    ),
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
                          contentPadding: const EdgeInsets.only(top: 5),
                          hintText: "Enter password",
                          hintStyle: const TextStyle(
                            fontFamily: "Rubik",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color(0xffBFBFBF),
                          ),
                          prefixIcon: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                isPasswordObscure
                                    ? "assets/images/lock2.png"
                                    : "assets/images/lock.png",
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isPasswordObscure = !isPasswordObscure;
                              });
                            },
                          ),
                          suffixIcon: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                isPasswordObscure
                                    ? "assets/images/eye2.png"
                                    : "assets/images/eye.png",
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                isPasswordObscure = !isPasswordObscure;
                              });
                            },
                          ),
                          // suffixIcon: IconButton(
                          //     icon: Icon(isPasswordObscure
                          //         ? Icons.visibility
                          //         : Icons.visibility_off),
                          //     color: const Color(0xffBFBFBF),
                          //     onPressed: () {
                          //       setState(() {
                          //         isPasswordObscure = !isPasswordObscure;
                          //       });
                          //     }),
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
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: TextButton(
                      onPressed: () {
                        bottomSheetWidget(context);
                      },
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 12,
                            color: Color(0xff8C8C8C),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 28,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(const bottom_bar());
                  },
                  child:
                      mainButton("Sign In", const Color(0xff4DA0E6), context)),
              const SizedBox(
                height: 15,
              ),
              const Row(children: [
                Expanded(
                  child: Divider(
                    color: Color(0xffECECEC),
                    height: 20,
                    indent: 70,
                    endIndent: 20,
                    thickness: 1.5,
                  ),
                ),
                Text(
                  "Or Continue with",
                  style: TextStyle(
                      fontFamily: "Rubik",
                      fontSize: 16,
                      color: Color(0xff8C8C8C),
                      fontWeight: FontWeight.w400),
                ),
                Expanded(
                  child: Divider(
                    color: Color(0xffECECEC),
                    height: 20,
                    indent: 15,
                    endIndent: 70,
                    thickness: 1.5,
                  ),
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              socialButtons(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'New User?',
                    style: TextStyle(
                        color: Color(0xff8C8C8C),
                        fontFamily: "Rubik",
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
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
                      Get.to(SignUpwithGoogle());
                    },
                    child: const Text(' Create an Account',
                        style: TextStyle(
                            color: Color(0xff4DA0E6),
                            fontFamily: "Rubik",
                            fontSize: 16,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
