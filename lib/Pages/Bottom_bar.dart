import 'package:evo_plexus/Pages/Profile_Page.dart';
import 'package:evo_plexus/Pages/Wallet_Page.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'ChatPage/Chat_Page.dart';
import 'FindPage/Find_Page.dart';
import 'HomePage/Home_Page.dart';

// ignore: camel_case_types
class bottom_bar extends StatefulWidget {
  const bottom_bar({Key? key}) : super(key: key);

  @override
  State<bottom_bar> createState() => _bottom_barState();
}

// ignore: camel_case_types
class _bottom_barState extends State<bottom_bar> {
  int currentIndex = 0;
  static final List<Widget> _widgetOption = <Widget>[
    HomePage(),
    ChatPage(),
    FindPage(),
    WalletPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      body: Container(
        child: _widgetOption[currentIndex],
      ),
      bottomNavigationBar: Container(
        height: height * 0.1, //90,
        width: width, //390,
        decoration: const BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff4DA0E6),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: Wrap(
            children: [
              BottomNavigationBar(
                  onTap: _onItemTapped,
                  currentIndex: currentIndex,
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  unselectedItemColor: Color(0xffBFBFBF),
                  items: [
                    BottomNavigationBarItem(
                      // icon: Container(
                      //   width: 50,
                      //   height: 50,
                      //   decoration: BoxDecoration(
                      //     gradient: LinearGradient(
                      //       begin: Alignment.topRight,
                      //       end: Alignment.bottomLeft,
                      //       colors: [
                      //         Color(0xff4DA0E6),
                      //         Color(0xff91C4D9),
                      //       ],
                      //     ),
                      //     boxShadow: [
                      //       BoxShadow(
                      //         color: Color(0xff4DA0E6),
                      //         spreadRadius: 1,
                      //         blurRadius: 30,
                      //         offset: Offset(0, 20),
                      //       ),
                      //     ],
                      //   ),
                      //   child: Image.asset("assets/icons/homes.png",),
                      // ),
                      // label: "Home",
                      icon: Image.asset(
                        "assets/icons/homes.png",
                      ),
                      activeIcon: Image.asset(
                        "assets/icons/Homeb.png",
                        width: 78,
                        height: 78,
                      ),
                      label: currentIndex == 0 ? "" : "Home",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/icons/message.png",
                      ),
                      activeIcon: Image.asset(
                        "assets/icons/chatb.png",
                        width: 78,
                        height: 78,
                      ),
                      label: currentIndex == 1 ? "" : "Chat",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/icons/finds.png",
                      ),
                      activeIcon: Image.asset(
                        "assets/icons/findb.png",
                        width: 78,
                        height: 78,
                      ),
                      label: currentIndex == 2 ? "" : "Find",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/icons/wallets.png",
                      ),
                      activeIcon: Image.asset(
                        "assets/icons/walletb.png",
                        width: 78,
                        height: 78,
                      ),
                      label: currentIndex == 3 ? "" : "Wallet",
                    ),
                    BottomNavigationBarItem(
                      icon: Image.asset(
                        "assets/icons/profiles.png",
                      ),
                      activeIcon: Image.asset(
                        "assets/icons/profileb.png",
                        width: 78,
                        height: 78,
                      ),
                      label: currentIndex == 4 ? "" : "Profile",
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
