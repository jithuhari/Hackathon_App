import 'package:flutter/material.dart';

class HostelDetail extends StatelessWidget {
  final String image;
  final String name;
  final String address1;
  final String address2;
  final String dist;
  final Color color;
  const HostelDetail(
      {super.key,
      required this.image,
      required this.name,
      required this.address1,
      required this.address2,
      required this.dist,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      // "assets/21378450.jpg",
                      image,
                      height: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          // color: Colors.deepPurple,
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        address1,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[500],
                        ),
                      ),
                      Text(
                        address2,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[500],
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: const EdgeInsets.all(5),
                child: Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Colors.grey[700],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.star,
                    size: 17,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                    color: Colors.amber,
                  ),
                  Icon(
                    Icons.star,
                    size: 17,
                  )
                ],
              ),
              Text(
                "$dist Kms",
                style: const TextStyle(
                    color: Colors.green, fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    );
  }
}
