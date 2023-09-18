import 'package:evo_plexus/Pages/Splash-Screen/Splash_Screen.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness:Brightness.dark,
      statusBarColor: Colors.transparent,
    ));
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SplashScreen(),
    );

  }
}
