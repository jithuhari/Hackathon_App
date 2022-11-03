import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hackathon_app/Screens/animal_profile/animal_profile_card.dart';
import 'package:hackathon_app/Screens/animal_profile/clipper/background_wave_clipper.dart';
import 'package:hackathon_app/models/constant.dart';
import 'package:hackathon_app/widgets/animal_card.dart';

import '../../theme/colors/colors.dart';

class AnimalProfileScreen extends StatelessWidget {
  const AnimalProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //   List content = [
    //   'age',
    //   'Gender',
    //   'Breed',
    //   'color',

    // ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipPath(
                clipper: BackgroundWaveClipper(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 280,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(0, 1, 1, 243),
                        Color(0xFFF6EFE9)

                        // Color(0xFFFACCCC), Color(0xFFF6EFE9)
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 5,
                bottom: 10,
                child: Container(
                    height: 250,
                    width: 200,
                    child: Image.asset("assets/blacki.png")),
              )
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text("Blacki",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2)),
              ),
              const Icon(
                Icons.male,
                size: 38,
                color: Color.fromARGB(255, 149, 128, 241),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: IconButton(
                    iconSize: 35,
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    )),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              "DoorNo:207/waybach street/uk",
              style: TextStyle(color: Color.fromARGB(255, 116, 112, 112)),
            ),
          ),
          GridView(
            padding: const EdgeInsets.all(20),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 50,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 45),
            children: [
              ProfileCard(leading: "age", content: "8month"),
              ProfileCard(leading: "Gender", content: "male"),
              ProfileCard(leading: "color", content: "black"),
              ProfileCard(leading: "Breed", content: "Beagle")
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const Center(
                child: Text(
                  "About",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                  "Ad officia proident nisi incididunt adipisicing laborum ex dolore cupidatat commodo sunt Ad officia proident nisi incididunt adipisicing laborum ex dolore cupidatat commodo sunt ",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(20)),
                width: 150,
                child: TextButton(
                  onPressed: () => "success",
                  child: const Text(
                    "Follow",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Path getClip(Size size) {
  var path = Path();
  path.lineTo(0.0, size.height);
  // We subtracted 80 from the height here
  path.lineTo(size.width, size.height - 80);
  path.lineTo(size.width, 0.0);
  return path;
}
