import 'dart:ffi';

import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/hostels/hostel_booking_confirm.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class HostelBookingForm extends StatefulWidget {
  const HostelBookingForm({super.key});

  @override
  State<HostelBookingForm> createState() => _HostelBookingFormState();
}

class _HostelBookingFormState extends State<HostelBookingForm> {
  String dropdownValue = "Kaisar";
  bool isCheckedpikup = false;
  bool isCheckedvet = false;
  bool isCheckedgroom = false;
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
          "Booking Form",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Pets Home",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 100,
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      errorStyle: TextStyle(color: Colors.redAccent),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.event_note),
                      labelText: 'From',
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  height: 100,
                  child: DateTimeFormField(
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.black45),
                      errorStyle: TextStyle(color: Colors.redAccent),
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.event_note),
                      labelText: 'To',
                    ),
                    mode: DateTimeFieldPickerMode.date,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Select your pet",
                      style: TextStyle(fontSize: 17),
                    ),
                    kheight,
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      borderRadius: BorderRadius.circular(10),
                      menuMaxHeight: 500,
                      isDense: true,
                      dropdownColor: Colors.white,
                      isExpanded: false,
                      value: dropdownValue,
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>["Kaisar", "Blacky", "Hello"]
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(fontSize: 17),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Add on Services",
                  style: TextStyle(fontSize: 17),
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: isCheckedpikup,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            isCheckedpikup = value!;
                          },
                        );
                      },
                    ),
                    const Text("Pickup/drop Service")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: isCheckedvet,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            isCheckedvet = value!;
                          },
                        );
                      },
                    ),
                    const Text("Veterinarian Service")
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: isCheckedgroom,
                      onChanged: (bool? value) {
                        setState(
                          () {
                            isCheckedgroom = value!;
                          },
                        );
                      },
                    ),
                    const Text("Grooming Service")
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(5)),
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () => Get.to(const HostelBookingConfirm()),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Text(
                          "Book now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
