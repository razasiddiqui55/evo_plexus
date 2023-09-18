// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import '../Pages/Side_menu/Side_menu.dart';
// import 'Circle_Avater.dart';
// import 'Drawer_button.dart';
//
//
//   Widget AppBar(BuildContext context) {
//     return Row(
//       children: [
//         Column(
//           children: [
//             GestureDetector(
//               onTap: (){
//                 Get.to(SideMenuPage());
//               },
//               child: Container(
//                   padding: EdgeInsets.only(right: 20),
//                   child: drawerButton(context)),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 20, right: 10),
//               child: avatorButton(context),
//             ),
//           ],
//         ),
//         SizedBox(height: 50,),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 30,),
//             Row(
//               children: [
//                 Text(
//                   "Welcome..!",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontFamily: "Asap",
//                     fontWeight: FontWeight.w400,
//                     fontSize: 12,
//                   ),
//                   textAlign: TextAlign.left,
//                 ),
//                 Container( width: 24, height: 24 ,child: SvgPicture.asset("assets/images/notification.svg")),
//               ],
//             ),
//             Text("Wade Warren",style: TextStyle(
//               color: Colors.white,
//               fontFamily: "Asap",
//               fontWeight: FontWeight.w500,
//               fontSize: 24,
//             ),textAlign: TextAlign.left,),
//             Text("How is it going today?",style: TextStyle(
//               color: Color(0xff025188),
//               fontFamily: "Asap",
//               fontWeight: FontWeight.w500,
//               fontSize: 16,
//             ),),
//           ],
//         ),
//         SizedBox(
//           width: 40,
//         ),
//         Column(
//           children: [
//             Container(
//               width: 90,
//               height: 140,
//               child: Image.asset("assets/images/isolation.png"),
//             ),
//           ],
//         ),
//       ],
//     );
//   }
