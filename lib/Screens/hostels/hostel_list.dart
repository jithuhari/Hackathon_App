import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/hostels/hostel_detail.dart';

class HostelList extends StatefulWidget {
  const HostelList({super.key});

  @override
  State<HostelList> createState() => _HostelListState();
}

class _HostelListState extends State<HostelList> {
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
          "Pet Hostels",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          suffixIcon: const Icon(
                            Icons.mic,
                            color: Colors.grey,
                          ),
                          hintText: 'Search',
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none),
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Expanded(
                    child: ListView(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    HostelDetail(
                      image: 'assets/21378450.jpg',
                      name: "Pets Home",
                      address1: "Kakkanad",
                      address2: "Kochi, Kerala",
                      dist: "3",
                      color: Color.fromARGB(255, 245, 237, 163),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HostelDetail(
                      image: 'assets/dog.jpg',
                      name: "Pet Hostel",
                      address1: "Palarivattom",
                      address2: "Kochi, Kerala",
                      dist: "5",
                      color: Color.fromARGB(255, 241, 169, 191),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HostelDetail(
                      image: 'assets/puppys.jpg',
                      name: "Pet Care",
                      address1: "Kalamasssery",
                      address2: "Kochi, Kerala",
                      dist: "6",
                      color: Color.fromARGB(255, 177, 170, 241),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HostelDetail(
                      image: 'assets/dog.jpg',
                      name: "Felican",
                      address1: "Tripunithura",
                      address2: "Kochi, Kerala",
                      dist: "6.5",
                      color: Color.fromARGB(255, 238, 171, 221),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    HostelDetail(
                      image: 'assets/21378450.jpg',
                      name: "Govt Pet Hostel",
                      address1: "Tripunithura",
                      address2: "Kochi, Kerala",
                      dist: "8",
                      color: Color.fromARGB(255, 142, 210, 219),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
