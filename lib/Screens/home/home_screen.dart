import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';
import 'package:hackathon_app/widgets/animal_card.dart';
import 'package:hackathon_app/widgets/animal_services_widget.dart';

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
              children: const [
                Text(
                  'My Pets',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
            height: 200,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, intex) => const AnimalCard(
                      myIcons: Icons.male,
                      name: 'Titou',
                      ageDetails: '2 year 1 month',
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      width: 0,
                    ),
                itemCount: 4),
          ),
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
                // AnimalServiceWidget(
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
