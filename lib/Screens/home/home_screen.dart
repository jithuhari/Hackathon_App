import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as rootBundle;
import 'package:get/get.dart';
import 'package:hackathon_app/Screens/animal_profile/animal_profile_screen.dart';
import 'package:hackathon_app/Screens/hostels/hostel_list.dart';
import 'package:hackathon_app/models/petModel.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';
import 'package:hackathon_app/widgets/animal_card.dart';
import 'package:hackathon_app/widgets/animal_services_widget.dart';
import 'package:hackathon_app/widgets/drawer_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List headings = [
    'Hostel Services',
    'Consult veterinary',
    'Grooming',
    'Pet Shops',
    'Pet Products',
    'Events',
    'Training',
    'Breeding',
    'Adoption',
    'Insurance',
    'Lost tracking (GPS tag)',
  ];

  List accents = <Color>[
    Colors.blue.shade200,
    Colors.pink.shade200,
    Colors.purple.shade200,
    Colors.deepPurple.shade200,
    Colors.indigo.shade200,
    Colors.red.shade200,
    Colors.lightBlue.shade200,
    Colors.cyan.shade200,
    Colors.teal.shade200,
    Colors.green.shade200,
    Colors.lightGreen.shade200,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerWidget(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kAppbarColor,
        leading: Builder(builder: (context) {
          return GestureDetector(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu_outlined, color: kTextColor),
          );
        }),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Kochi',
              style: TextStyle(color: kTextColor),
            ),
            Icon(Icons.arrow_drop_down, color: kTextColor)
          ],
        ),
        actions: const [
          Padding(
            padding: kPadding10,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/user.jpg'),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                  padding: kPadding20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'My Pets',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Add Pet',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: kTextLinkColor),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                    height: 165,
                    child: FutureBuilder(
                      future: ReadJsonData(),
                      builder: (context, data) {
                        if (data.hasError) {
                          return Center(
                            child: Text("${data.error}"),
                          );
                        } else if (data.hasData) {
                          var items = data.data as List<dynamic>;
                          return ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => GestureDetector(
                                    onTap: () {
                                      Get.to(const AnimalProfileScreen());
                                    },
                                    child: AnimalCard(
                                      myIcons: Icons.male,
                                      name: items[index].name.toString(),
                                      ageDetails: '2 y 1 month',
                                      homeWidth: 110,
                                    ),
                                  ),
                              separatorBuilder: (context, index) =>
                                  const SizedBox(
                                    width: 0,
                                  ),
                              itemCount: items.length);
                        } else {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      },
                    )),
                kheight,
                //Carousel Slider

                CarouselSlider(
                  options: CarouselOptions(height: 65.0),
                  items: ['Health Checkup', 'Champions', 3].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.shade500,
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: kPadding10,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(Icons.medical_services_outlined,
                                          size: 16, color: Colors.white),
                                      kWidth,
                                      Text(
                                        'Health Check',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Icon(CupertinoIcons.clock,
                                          size: 14, color: Colors.white),
                                      kWidth,
                                      Text(
                                        '09.00 AM . 14 Dec , 2022',
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ));
                      },
                    );
                  }).toList(),
                ),

                Padding(
                  padding: kPadding20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Services',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'See All',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: kTextLinkColor),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.builder(
                    itemCount: headings.length,
                    itemBuilder: (context, index) => GestureDetector(
                      onTap: () {
                        Get.to(const HostelList());
                      },
                      child: AnimalServiceWidget(
                        details:
                            'Ex aliquip duis tempor sint est consectetur esse magna occaecat voluptate elit.',
                        heading: headings[index],
                        cardColors: accents[index],
                      ),
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                  ),
                ),
                kheight20
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Future<List<Pet>> ReadJsonData() async {
  final jsondata =
      await rootBundle.rootBundle.loadString('assets/json/data.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => Pet.fromJson(e)).toList();
}
