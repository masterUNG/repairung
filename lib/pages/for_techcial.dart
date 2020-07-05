import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:location/location.dart';

class ForTechinal extends StatefulWidget {
  @override
  _ForTechinalState createState() => _ForTechinalState();
}

class _ForTechinalState extends State<ForTechinal> {
  double lat, lng;
  Location location = Location();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    location.onLocationChanged.listen((event) {
      setState(() {
        lat = event.latitude;
        lng = event.longitude;
        updateLocation();
      });
    });
  }

  Future<Null> updateLocation() async {
    try {
      Map<String, dynamic> map = Map();
      map['Lat'] = lat;
      map['Lng'] = lng;

      Firestore firestore = Firestore.instance;
      await firestore
          .collection('Technic')
          .document('GM4UgnaK82WKrGzCp5HOZL5w9X53')
          .updateData(map)
          .then((value) => print('Success'));
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('For Technicial'),
      ),
      body: Text(lat == null ? 'กรุณารอสักคร่' : 'lat = $lat, lng = $lng'),
    );
  }
}
