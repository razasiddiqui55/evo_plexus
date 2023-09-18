// import 'package:flutter/material.dart';
//
// // ignore: camel_case_types
// class Doctor_screen extends StatelessWidget {
//   final Map<String, dynamic> doctor;
//
//   const Doctor_screen({Key? key, required this.doctor}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     print("Doctor professional is ${doctor["professional"]}");
//     // final size = appLayout.getSize(context);
//     return  Container(
//                 // width: size.width * 0.8,
//       width: 200,
//                 height: 350,
//                 // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
//                 // margin: const EdgeInsets.only(
//                 //   right: 17,
//                 //   top: 5,
//                 // ),
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(24),
//                     // color: Styles.primaryColor,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade200,
//                         blurRadius: 20,
//                         spreadRadius: 5,
//                       )
//                     ]),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       height: 180,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         // color: Styles.primaryColor,
//                         image: DecorationImage(
//                           fit: BoxFit.cover,
//                           image: AssetImage("assets/images/${doctor["image"]}"),
//                         ),
//                       ),
//                     ),
//                     // const Gap(12),
//                     Text(
//                       doctor["name"],
//                       // style:
//                       // Styles.headLineStyle2.copyWith(color: Styles.KakiColor),
//                     ),
//                     // const Gap(5),
//                     Text(
//                       doctor["professional"],
//                       // style: Styles.headLineStyle3.copyWith(color: Colors.white),
//                     ),
//                     // const Gap(8),
//                   ],
//                 ),
//         );
//   }
// }
// // Container(
// // width: size.width * 0.8,
// // height: 350,
// // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
// // margin: const EdgeInsets.only(
// // right: 17,
// // top: 5,
// // ),
// // decoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(24),
// // color: Styles.primaryColor,
// // boxShadow: [
// // BoxShadow(
// // color: Colors.grey.shade200,
// // blurRadius: 20,
// // spreadRadius: 5,
// // )
// // ]),
// // child: Column(
// // mainAxisAlignment: MainAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.start,
// // children: [
// // Container(
// // height: 180,
// // decoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(12),
// // color: Styles.primaryColor,
// // image:  DecorationImage(
// // fit: BoxFit.cover,
// // image: AssetImage("assets/images/${hotel["image"]}"),
// // ),),
// // ),
// // const Gap(12),
// // Center(
// // child: Text(
// // hotel["place"],
// // style: Styles.headLineStyle2.copyWith(color: Styles.KakiColor),
// // ),
// // ),
// // const Gap(5),
// // Center(
// // child: Text(
// // hotel["destination"],
// // style: Styles.headLineStyle3.copyWith(color: Colors.white),
// // ),
// // ),
// // const Gap(8),
// // Center(
// // child: Text(
// // "\$${hotel["price"]}/night",
// // style: Styles.headLineStyle1.copyWith(color: Styles.KakiColor),
// // ),
// // ),
// // ],
// // ),
// // );
