import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class AnimalCard extends StatelessWidget {
  const AnimalCard({
    Key? key,
    required this.name,
    required this.myIcons,
    required this.ageDetails,
    required this.homeWidth,
  }) : super(key: key);

  final String name;
  final IconData myIcons;
  final String ageDetails;
  final double homeWidth;

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
        width: homeWidth,
        child: Column(
          children: [
            const Image(height: 80, image: AssetImage('assets/cat1.png')),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Icon(myIcons)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Row(
                children: [
                  Text(
                    ageDetails,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
