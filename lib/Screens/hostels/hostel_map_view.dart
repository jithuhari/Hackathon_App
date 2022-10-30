import 'package:flutter/material.dart';

class HostelMapView extends StatefulWidget {
  const HostelMapView({super.key});

  @override
  State<HostelMapView> createState() => _HostelMapViewState();
}

class _HostelMapViewState extends State<HostelMapView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black,
        ),
        actions: const [
          Icon(Icons.more_horiz),
        ],
        title: const Text(
          "Pets Home",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              "assets/map.jpg",
              height: 550,
            )
          ],
        ),
      ),
    );
  }
}
