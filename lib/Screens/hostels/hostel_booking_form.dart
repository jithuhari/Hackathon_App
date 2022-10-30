import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HostelBookingForm extends StatefulWidget {
  const HostelBookingForm({super.key});

  @override
  State<HostelBookingForm> createState() => _HostelBookingFormState();
}

class _HostelBookingFormState extends State<HostelBookingForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () =>Get.back() ,
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.more_horiz),
        ],
        title: const Text(
          "Pets Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(),
      ),
    );
  }
}
