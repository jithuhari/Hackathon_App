import 'package:flutter/material.dart';
import 'package:hackathon_app/widgets/animal_card.dart';

class AnimalProfileScreen extends StatelessWidget {
  const AnimalProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          iconTheme:const IconThemeData(color: Colors.white),
          backgroundColor: Colors.deepPurple.shade500,
          
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          expandedHeight: MediaQuery.of(context).size.height / 4,
          flexibleSpace: const FlexibleSpaceBar(
            titlePadding: EdgeInsetsDirectional.only(start: 16.0, bottom: 16.0),
            centerTitle: false,
            title: Text(
              '',
              textScaleFactor: 1.0,
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            // ClipRRect added here for rounded corners
            background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
                child: Image(
                  height: 100,
                  width: 100,
                  image: AssetImage('assets/cat1.png'),
                )),
          ),
        )
      ],
    ));
  }
}
