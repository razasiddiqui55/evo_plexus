import 'package:evo_plexus/Variables/Drawer_button.dart';
import 'package:evo_plexus/Variables/MyButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Pages/Side_menu/Side_menu.dart';
import '../Pages/Video_Call.dart';

class AppBar1 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String? image;

  const AppBar1({
    Key? key,
    this.title = "",
    this.image,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        leading: GestureDetector(
          onTap: () {
            Get.to(SideMenuPage());
          },
          child: Container(
              padding: EdgeInsets.only(right: 20),
              child: drawerButton(context)),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Asap",
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Image.asset(
            image!,
            width: 32,
            height: 32,
          ),
        ],
      ),
    );
  }
}

class MyPreferredSizeAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? color;

  const MyPreferredSizeAppBar({Key? key, this.color}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: color,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        elevation: 0,
      ),
    );
  }
}

class AppBar2 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String image;

  const AppBar2({
    Key? key,
    this.title = "",
    required this.image,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Asap",
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {
              Get.to(VideoCallPage());
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Color(0xffF2F2F2), width: 1),
              ),
              child: Image.asset(
                image,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPreferredSizeAppBar2 extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? color;

  const MyPreferredSizeAppBar2({Key? key, this.color}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: color,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        elevation: 0,
      ),
    );
  }
}

class AppBar3 extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const AppBar3({
    Key? key,
    this.title = "",
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        leading: GestureDetector(
          onTap: () {
            Get.to(SideMenuPage());
          },
          child: Container(
              padding: EdgeInsets.only(right: 20),
              child: drawerButton(context)),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Asap",
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
    );
  }
}

class MyPreferredSizeAppBar3 extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? color;

  const MyPreferredSizeAppBar3({Key? key, this.color}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: color,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        elevation: 0,
      ),
    );
  }
}

class AppBar4 extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final String image;

  const AppBar4({
    Key? key,
    this.title = "",
    required this.image,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
      child: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            child: Image.asset("assets/images/back.png"),
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Asap",
            fontWeight: FontWeight.w500,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          // GestureDetector(
          //   onTap: () {},
          //   child: Container(
          //     width: 32,
          //     height: 32,
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       borderRadius: BorderRadius.circular(25),
          //       border: Border.all(color: Color(0xffF2F2F2), width: 1),
          //     ),
          //     child:
          Image.asset(image),
          // ),
          // ),
          // ]),
        ],
      ),
    );
  }
}

class MyPreferredSizeAppBar4 extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? color;

  const MyPreferredSizeAppBar4({Key? key, this.color}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(0);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(0.0),
      child: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: color,
          // <-- SEE HERE
          statusBarIconBrightness: Brightness.light,
          //<-- For Android SEE HERE (dark icons)
          statusBarBrightness:
              Brightness.light, //<-- For iOS SEE HERE (dark icons)
        ),
        elevation: 0,
      ),
    );
  }
}
