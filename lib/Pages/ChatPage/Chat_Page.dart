import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Variables/AppBar.dart';
import 'ChatDetails_Page.dart';

class ChatPage extends StatefulWidget {
  ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: Image.asset(
                "assets/images/bgimage.png",
                width: width,
              ).image,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              const AppBar1(
                title: "Chat",
                image: "assets/images/avator.png",
              ),
              SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Container(
                  width: width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: width * 0.89,
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border:
                              Border.all(color: const Color(0xffF2F2F2), width: 1),
                        ),
                        child: TextField(
                          controller: _controller,
                          cursorColor: const Color(0xffBFBFBF),
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.all(20),
                            border: InputBorder.none,
                            hintText: "Search...",
                            hintStyle: TextStyle(
                              fontFamily: "Rubik",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Color(0xffBFBFBF),
                            ),
                            prefixIcon: Icon(
                              Icons.search_outlined,
                              color: Color(0xffBFBFBF),
                            ),
                          ),
                          style: const TextStyle(
                            fontFamily: "Rubik",
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffBFBFBF),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          // height: MediaQuery.of(context).size.height * 0.16,
                          width: double.infinity,
                          color: Colors.transparent,
                          height: height * 0.7, //530,
                          child: ListView.builder(
                              shrinkWrap: true,
                              // physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: chatList.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(const ChatDetailsPage());
                                    },
                                    child: Container(
                                      // height: MediaQuery.of(context).size.height * 0.4,
                                      // width: MediaQuery.of(context).size.width * 0.3,
                                      width: width * 0.6, //358,
                                      height: height * 0.10, //80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        border: Border.all(
                                            color: const Color(0xffF2F2F2), width: 1),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                children: [
                                                  Stack(
                                                    children: [
                                                      Image.asset(
                                                        chatList[index].image,
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                left: 30,
                                                                top: 25.0),
                                                        child: Container(
                                                          height: 16,
                                                          width: 16,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.green,
                                                            shape:
                                                                BoxShape.circle,
                                                            border: Border.all(
                                                                color: Theme.of(
                                                                        context)
                                                                    .scaffoldBackgroundColor,
                                                                width: 3),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        chatList[index].title,
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff025188),
                                                          fontFamily: "Rubik",
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: 16,
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                      Text(
                                                        chatList[index]
                                                            .subTitle,
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff8C8C8C),
                                                          fontFamily: "Rubik",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 14,
                                                        ),
                                                        textAlign:
                                                            TextAlign.left,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      border: Border.all(
                                                          color:
                                                              const Color(0xffF2F2F2),
                                                          width: 1),
                                                    ),
                                                    child: Image.asset(
                                                      "assets/images/Video.png",
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Container(
                                                    width: 32,
                                                    height: 32,
                                                    decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              25),
                                                      border: Border.all(
                                                          color:
                                                              const Color(0xffF2F2F2),
                                                          width: 1),
                                                    ),
                                                    child: Image.asset(
                                                      "assets/images/Comment.png",
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                ],
                                              )
                                            ],
                                          )),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List chatList = [
  _chatList("assets/images/d1.png", "Dr. Iyan", 'dentist', Colors.grey),
  _chatList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _chatList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.white38),
  _chatList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.grey),
  _chatList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.black12),
  _chatList("assets/images/d1.png", "Dr. Iyan", 'dentist', Colors.white38),
  _chatList("assets/images/d2.png", "Dr. Iyan", 'dentist', Colors.grey),
  _chatList("assets/images/d3.png", "Dr. Iyan", 'dentist', Colors.black12),
];

class _chatList {
  final String image;
  final String title;
  final String subTitle;
  final Color color;

  _chatList(this.image, this.title, this.subTitle, this.color);
}
