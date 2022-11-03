import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/hostels/hostel_booking_form.dart';

class HostelDetailPage extends StatefulWidget {
  const HostelDetailPage({super.key});

  @override
  State<HostelDetailPage> createState() => _HostelDetailPageState();
}

class _HostelDetailPageState extends State<HostelDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        actions: const [
          Icon(Icons.more_horiz),
        ],
        // title: const Text(
        //   "Pets Home",
        //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        // ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Pets Home",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              padding: const EdgeInsets.all(5),
                              child: const Text(
                                "Available",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.map_outlined,
                              color: Colors.grey,
                              size: 18,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            TextButton(
                              child: const Text("Kakkanad, Kochi (view in map",
                                  style: TextStyle(color: Colors.grey)),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        "assets/21378450.jpg",
                        height: 300,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.delivery_dining,
                            size: 45,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            "Pickup/drop",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Available",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.h_plus_mobiledata_rounded,
                            size: 45,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            "Veterinarian",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Available",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.pets,
                            size: 45,
                            color: Colors.deepPurple,
                          ),
                          Text(
                            "Grooming",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Available",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Customer Reviews",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      size: 50,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    wordSpacing: 2,
                    height: 1.25,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Price",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text(
                                "1500 ₹",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("per day")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
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
                      onPressed: () => Get.to(const HostelBookingForm()),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Book Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            )
                          ],
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
