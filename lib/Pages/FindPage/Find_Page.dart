import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Variables/AppBar.dart';

class FindPage extends StatefulWidget {
  const FindPage({Key? key}) : super(key: key);

  @override
  State<FindPage> createState() => FindPageState();
}

class FindPageState extends State<FindPage> {
  // final Completer<GoogleMapController> _controller =
  // Completer<GoogleMapController>();
  //
  // static const CameraPosition _kGooglePlex = CameraPosition(
  //   target: LatLng(37.42796133580664, -122.085749655962),
  //   zoom: 14.4746,
  // );
  //
  // static const CameraPosition _kLake = CameraPosition(
  //     bearing: 192.8334901395799,
  //     target: LatLng(37.43296265331129, -122.08832357078792),
  //     tilt: 59.440717697143555,
  //     zoom: 19.151926040649414);

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
        child: Column(children: [
          AppBar1(
            title: "Find",
            image: "assets/images/avator.png",
          ),
          Expanded(
            child: Container(
              width: width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Image.asset("assets/images/maps.png", fit: BoxFit.fill),
            ),
          ),
        ]),
      ),
    );
  }

// Future<void> _goToTheLake() async {
//   final GoogleMapController controller = await _controller.future;
//   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
// }
}
