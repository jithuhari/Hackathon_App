// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_map/plugin_api.dart';
// import 'package:latlong2/latlong.dart';

// import 'package:latlong2/spline.dart';
// import 'package:flutter_map/plugin_api.dart';

// // import 'package:latlong2/spline/CatmullRomSpline.dart';

// class MyMap extends StatefulWidget {
//   const MyMap({Key? key}) : super(key: key);

//   @override
//   State<MyMap> createState() => _MyMapState();
// }

// class _MyMapState extends State<MyMap> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text('MAP')),
//         body: FlutterMap(
//           options: MapOptions(
//             center: LatLng(40.71, -74.00),
//             minZoom: 100.0,
//             //zoom: 1.2,
//           ),
//           layers: [
//             TileLayerOptions(
//               urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
//               subdomains: ['a', 'b', 'c'],
//             ),
//             MarkerLayerOptions(markers: [
//               Marker(
//                 width: 45,
//                 height: 45,
//                 point: LatLng(40.71, -74.00),
//                 builder: (context) => Container(
//                   child: IconButton(
//                     onPressed: () {
//                       print("marker");
//                     },
//                     icon:const Icon(Icons.location_on),
//                     color: Colors.red,
//                   ),
//                 ),
//               ),
//             ])
//           ],
//         ));
//   }
// }
