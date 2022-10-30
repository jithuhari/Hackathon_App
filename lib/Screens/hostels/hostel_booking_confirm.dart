import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/home/home2_screen.dart';

class HostelBookingConfirm extends StatefulWidget {
  const HostelBookingConfirm({super.key});

  @override
  State<HostelBookingConfirm> createState() => _HostelBookingConfirmState();
}

class _HostelBookingConfirmState extends State<HostelBookingConfirm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        actions: const [
          Icon(Icons.more_horiz),
        ],
        title: const Text(
          "Confirmation",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(120),
                            child: Container(
                              decoration:
                                  BoxDecoration(color: Colors.greenAccent[700]),
                              padding: const EdgeInsets.all(40),
                              child: const Icon(
                                Icons.check_rounded,
                                color: Colors.white,
                                size: 150,
                              ),
                            )),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Booked!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Your booking has been Confirmed. \n A confirmation email has been sent to ",
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "user@admin.com",
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5)),
                    width: double.infinity,
                    child: TextButton(
                        onPressed: () => Get.to(HomeScreen2()),
                        child: const Padding(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          child: Text(
                            "Home",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
