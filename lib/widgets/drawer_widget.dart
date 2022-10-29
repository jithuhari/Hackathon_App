import 'package:flutter/material.dart';
import 'package:hackathon_app/theme/colors/colors.dart';
import 'package:hackathon_app/theme/constants/const.dart';

class DrawerWidget extends StatelessWidget {
  final name = 'Sree';
  final email = 'sree@gmail.com';

  const DrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        // borderRadius: const BorderRadius.only(bottomRight: Radius.circular(10),topRight: Radius.circular(10) ),
        color: Colors.deepPurple.shade500,
        child: ListView(
          children: [
            profileView(email: email, name: name),
            menuItems(text: 'Adoption', icon: Icons.home_outlined),
            menuItems(text: 'Donation', icon: Icons.handshake_outlined),
            menuItems(text: 'Favorites', icon: Icons.favorite_outline),
            menuItems(text: 'Messages', icon: Icons.message_outlined),
            menuItems(text: 'Profile', icon: Icons.person_outline),
            menuItems(text: 'Logout', icon: Icons.logout),
          ],
        ),
      ),
    );
  }
}

Widget menuItems({
  required String text,
  required IconData icon,
}) {
  return ListTile(
    leading: Icon(icon, color: kTextWhiteColor),
    title: Text(
      text,
      style: const TextStyle(color: kTextWhiteColor),
    ),
    hoverColor: Colors.white70,
    onTap: () {},
  );
}

Widget profileView({required String name, required String email}) => Container(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(children: [
        kWidth,
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/user.jpg'),
        ),
        kWidth,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(color: kTextWhiteColor, fontSize: 20),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              email,
              style: const TextStyle(fontSize: 14, color: kTextWhiteColor),
            )
          ],
        )
      ]),
    );
