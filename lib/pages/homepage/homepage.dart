import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/homepage/widgets/home_button.dart';
import 'package:flutter_train_app/pages/homepage/widgets/stations.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String departure = "";
  String destination = "";

  void setDeparture(String stationName) {
    setState(() {
      departure = stationName;
    });
  }

  void setDestination(String stationName) {
    setState(() {
      destination = stationName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('기차 예매'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Stations(
              setDeparture: setDeparture,
              setDestination: setDestination,
              departure: departure,
              destination: destination,
            ),
            SizedBox(height: 20),
            HomeButton(
              departure: departure,
              destination: destination,
              isStationsSet: isStationsSet(),
            ),
          ]),
        ),
      ),
    );
  }

  bool isStationsSet() {
    return departure.isNotEmpty && destination.isNotEmpty;
  }
}
