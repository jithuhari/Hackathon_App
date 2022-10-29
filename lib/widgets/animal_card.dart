import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    Key? key,
    required this.name,
    required this.myIcons,
    required this.ageDetails,
  }) : super(key: key);

  final String name;
  final IconData myIcons;
  final String ageDetails;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kPadding10,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 2,
                  offset: const Offset(1, 1))
            ],
            borderRadius: BorderRadius.circular(8)),
        width: 125,
        child: Column(
          children: [
            Padding(
              padding: kPadding10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text(name), Icon(myIcons)],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Text(ageDetails),
                ],
              ),
            ),
            const Image(height: 120, image: AssetImage('assets/cat1.png'))
          ],
        ),
      ),
    );
  }
}
