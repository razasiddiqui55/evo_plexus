import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

Widget FirstNameTextField(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  final firstnameController = TextEditingController();
  String _firstName = '';
  return SizedBox(
    width: width * 0.89,
    height: height * 0.06,
    child: TextFormField(
      controller: firstnameController,
      validator: (value) {
        // if (value == null || value.isEmpty) {
        //   return 'Please enter your email address';
        // }
        // // Check if the entered email has the right format
        // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
        //   return 'Please enter a valid email address';
        // }
        // // Return null if the entered email is valid
        // return null;
      },
      // onChanged: (value) => _firstName = value,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Color(0xffBFBFBF),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 12.0),
        hintText: "First name",
        hintStyle: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xffBFBFBF),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/person.png"),
        ),
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
  );
}

Widget LastNameTextField(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  final lastnameController = TextEditingController();
  String _lastname = '';
  return SizedBox(
    width: width * 0.89,
    height: height * 0.06,
    child: TextFormField(
      controller: lastnameController,
      validator: (value) {
        // if (value == null || value.isEmpty) {
        //   return 'Please enter your email address';
        // }
        // // Check if the entered email has the right format
        // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
        //   return 'Please enter a valid email address';
        // }
        // // Return null if the entered email is valid
        // return null;
      },
      // onChanged: (value) => _lastname = value,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Color(0xffBFBFBF),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 12.0),
        hintText: "Last name",
        hintStyle: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xffBFBFBF),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/person.png"),
        ),
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
  );
}

Widget EmailTextField(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  final emailController = TextEditingController();
  return SizedBox(
    width: width * 0.89,
    height: height * 0.06,
    child: TextFormField(
      controller: emailController,
      validator: (value) {
        // if (value == null || value.isEmpty) {
        //   return 'Please enter your email address';
        // }
        // // Check if the entered email has the right format
        // if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
        //   return 'Please enter a valid email address';
        // }
        // // Return null if the entered email is valid
        // return null;
      },
      // onChanged: (value) => _email = value,
      textAlign: TextAlign.left,
      style: const TextStyle(
        color: Color(0xffBFBFBF),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 12),
        hintText: "Enter email",
        hintStyle: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xffBFBFBF),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/messages.png"),
        ),
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
  );
}

// Widget PasswordTextField(BuildContext context) {
//   var height = MediaQuery.of(context).size.height;
//   var width = MediaQuery.of(context).size.width;
//   final passwordController = TextEditingController();
//   bool isPasswordObscure = true;
//   return SizedBox(
//     width: width * 0.89,
//     height: height * 0.06,
//     child: TextFormField(
//       controller: passwordController,
//       validator: (value) {
//         // if (value == null || value.trim().isEmpty) {
//         //   return 'This field is required';
//         // }
//         // if (value.trim().length < 8) {
//         //   return 'Password must be at least 8 characters in length';
//         // }
//         // // Return null if the entered password is valid
//         // return null;
//       },
//       // onChanged: (value) => _password = value,
//       style: const TextStyle(
//         color: Color(0xffBFBFBF),
//         fontFamily: "Rubik",
//         fontWeight: FontWeight.w400,
//         fontSize: 14,
//       ),
//       obscureText: isPasswordObscure,
//       obscuringCharacter: '*',
//       keyboardType: TextInputType.visiblePassword,
//       decoration: InputDecoration(
//         hintText: "Enter password",
//         contentPadding: EdgeInsets.only(top: 12.0),
//         hintStyle: TextStyle(
//           fontFamily: "Rubik",
//           fontWeight: FontWeight.w400,
//           fontSize: 14,
//           color: Color(0xffBFBFBF),
//         ),
//         prefixIcon: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Image.asset("assets/images/lock.png"),
//         ),
//         // suffixIcon: IconButton(
//         //   child: Padding(
//         //     padding: const EdgeInsets.all(8.0),
//         //     child: Image.asset(
//         //       isPasswordObscure
//         //      ? 'assets/eye.png'
//         //      :  'assets/eye.png',
//         //     ),
//         //   ),
//         //   onPressed: (){}, icon: null,
//         // ),
//         // ),
//         suffixIcon: IconButton(
//             icon: Icon(
//                 isPasswordObscure ? Icons.visibility : Icons.visibility_off),
//             color: const Color(0xffBFBFBF),
//             onPressed: () {
//               setState(() {
//                 isPasswordObscure = !isPasswordObscure;
//               });
//             }),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Color(0xffBFBFBF),
//             width: 1.0,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Color(0xffBFBFBF),
//             width: 1.0,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1.0,
//           ),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1.0,
//           ),
//         ),
//       ),
//     ),
//   );
// }

// Widget ConfirmTextField(BuildContext context) {
//   var height = MediaQuery.of(context).size.height;
//   var width = MediaQuery.of(context).size.width;
//   final retypepasswordController = TextEditingController();
//   bool isPassworconfirmdObscure = true;
//   return SizedBox(
//     width: width * 0.89,
//     height: height * 0.06,
//     child: TextFormField(
//       controller: retypepasswordController,
//       validator: (value) {
//         // if (value == null || value.trim().isEmpty) {
//         //   return 'This field is required';
//         // }
//         // if (value.trim().length < 8) {
//         //   return 'Password must be at least 8 characters in length';
//         // }
//         // // Return null if the entered password is valid
//         // return null;
//       },
//       // onChanged: (value) => _retypePassword = value,
//       style: const TextStyle(
//         color: Color(0xffBFBFBF),
//         fontFamily: "Rubik",
//         fontWeight: FontWeight.w400,
//         fontSize: 14,
//       ),
//       obscureText: isPassworconfirmdObscure,
//       obscuringCharacter: '*',
//       keyboardType: TextInputType.visiblePassword,
//       decoration: InputDecoration(
//         hintText: "Retype password",
//         contentPadding: EdgeInsets.only(top: 12.0),
//         hintStyle: TextStyle(
//           fontFamily: "Rubik",
//           fontWeight: FontWeight.w400,
//           fontSize: 14,
//           color: Color(0xffBFBFBF),
//         ),
//         prefixIcon: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Image.asset("assets/images/lock.png"),
//         ),
//         // suffixIcon: IconButton(
//         //   child: Padding(
//         //     padding: const EdgeInsets.all(8.0),
//         //     child: Image.asset(
//         //       isPasswordObscure
//         //      ? 'assets/eye.png'
//         //      :  'assets/eye.png',
//         //     ),
//         //   ),
//         //   onPressed: (){}, icon: null,
//         // ),
//         // ),
//         suffixIcon: IconButton(
//             icon: Icon(isPassworconfirmdObscure
//                 ? Icons.visibility
//                 : Icons.visibility_off),
//             color: const Color(0xffBFBFBF),
//             onPressed: () {
//               setState(() {
//                 isPassworconfirmdObscure = !isPassworconfirmdObscure;
//               });
//             }),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Color(0xffBFBFBF),
//             width: 1.0,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Color(0xffBFBFBF),
//             width: 1.0,
//           ),
//         ),
//         errorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1.0,
//           ),
//         ),
//         focusedErrorBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//           borderSide: const BorderSide(
//             color: Colors.red,
//             width: 1.0,
//           ),
//         ),
//       ),
//     ),
//   );
// }

Widget NumberTextField(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;
  final retypepasswordController = TextEditingController();
  return SizedBox(
    width: width * 0.89,
    height: height * 0.09,
    child: IntlPhoneField(
      style: const TextStyle(
        color: Color(0xffBFBFBF),
        fontFamily: "Rubik",
        fontWeight: FontWeight.w400,
        fontSize: 14,
      ),
      decoration: InputDecoration(
        hintText: "Enter Phone",
        contentPadding: EdgeInsets.only(top: 12.0),
        hintStyle: TextStyle(
          fontFamily: "Rubik",
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: Color(0xffBFBFBF),
        ),
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
        // errorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(12),
        //   borderSide: const BorderSide(
        //     color: Colors.red,
        //     width: 1.0,
        //   ),
        // ),
        // focusedErrorBorder: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(12),
        //   borderSide: const BorderSide(
        //     color: Colors.red,
        //     width: 1.0,
        //   ),
        // ),
      ),
      initialCountryCode: 'IN',
      onChanged: (phone) {
        print(phone.completeNumber);
      },
      onCountryChanged: (country) {
        print('Country changed to: ' + country.name);
      },
    ),
  );
}
