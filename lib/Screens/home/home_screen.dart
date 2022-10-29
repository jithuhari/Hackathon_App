import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackathon_app/model/addpet_model.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';
import 'package:hackathon_app/widgets/animal_card.dart';
import 'package:hackathon_app/widgets/animal_services_widget.dart';
import 'package:flutter/services.dart' as rootBundle;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kAppbarColor,
        leading: const Icon(Icons.menu_outlined, color: kTextColor),
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
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: kPadding20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Pets',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Add Pet',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: kTextLinkColor),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
              height: 200,
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
                        itemBuilder: (context, index) => AnimalCard(
                              myIcons: Icons.male,
                              name: items[index].name.toString(),
                              ageDetails: '2 year 1 month',
                            ),
                        separatorBuilder: (context, index) => const SizedBox(
                              width: 0,
                            ),
                        itemCount: items.length);
                  } else {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              )),
          Padding(
            padding: kPadding20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Services',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
            child: GridView.count(
              // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //   crossAxisCount: 2,
              // ),
              crossAxisCount: 2,
              shrinkWrap: true,
              children: const [
                AnimalServiceWidget(
                  details:
                      'Ex aliquip duis tempor sint est consectetur esse magna occaecat voluptate elit.',
                  heading: 'Hostel Services',
                ),
                // AnimalServiceWidget(
                //   details:
                //       'Ex aliquip duis tempor sint est consectetur esse magna occaecat voluptate elit.',
                //   heading: 'Hostel Services',
                // ),
                // AnimalServiceWidget(
                //   details:
                //       'Ex aliquip duis tempor sint est consectetur esse magna occaecat voluptate elit.',
                //   heading: 'Hostel Services',
                // ),
                // AnimalServiceWidget(name: items[index].name.toString(),
                //   details:
                //       'Ex aliquip duis tempor sint est consectetur esse magna occaecat voluptate elit.',
                //   heading: 'Hostel Services',
                // ),
              ],
            ),
          )
        ],
      )),
    );
  }
}

Future<List<Pet>> ReadJsonData() async {
  final jsondata =
      await rootBundle.rootBundle.loadString('assets/json/data.json');
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => Pet.fromJson(e)).toList();
}
