import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'Appointment_Page.dart';
import 'Doctors.dart';
import 'HeadRow.dart';
import 'Hospitals.dart';
import 'TopContainer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              width: width,
            ).image,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            TopContainer(),
            Container(
              width: width,
              height: height * 0.75,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: width * 0.9, // 358,
                      height: 150,
                      decoration: BoxDecoration(
                          color: const Color(0xffE9F2F1),
                          borderRadius: BorderRadius.circular(25),
                          image: DecorationImage(
                            image: Image.asset("assets/images/Clip.png").image,
                          )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Text(
                              "What happens when \n you quit smoking?",
                              style: TextStyle(
                                color: Color(0xff025188),
                                fontFamily: "Asap",
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: SizedBox(
                              width: 98,
                              height: 42,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff4DA0E6),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12)),
                                ),
                                child: const Text(
                                  "Learn More",
                                  style: TextStyle(
                                    color: Color(0xffffffff),
                                    fontFamily: "Rubik",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Heading("Popular Doctor", "See all", context),
                    DoctorsList(),
                    Heading("Popular Hospital/Clinic", "See all", context),
                    HospitalsList(),
                    Heading("Appointment", "", context),
                    AppointmentList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}