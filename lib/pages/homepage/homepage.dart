import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/homepage/widgets/home_button.dart';
import 'package:flutter_train_app/pages/homepage/widgets/stations.dart';

/*
  In HomePage, departure and destination are the tracked states
  that are passed to the Stations widget as props.
 */
class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String departure = "";
  String destination = "";

  // Set departure station
  void setDeparture(String stationName) {
    setState(() {
      departure = stationName;
    });
  }

  // Set destination station
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
          // Center the children
          // Stations, and sizedBox for spacing, and HomeButton are the children
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Stations widget is passed the setDeparture, setDestination, departure, and destination props
            // setDeparture and setDestination are functions that set the departure and destination states
            // departure and destination are the tracked states
            // The setDeparture and setDestination functions are called when a station is selected
            Stations(
              setDeparture: setDeparture,
              setDestination: setDestination,
              departure: departure,
              destination: destination,
            ),
            SizedBox(height: 20),
            // HomeButton is passed the departure, destination, and isStationsSet props
            // departure and destination are the tracked states
            // isStationsSet is a function that checks if departure and destination are set
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

  // Check if departure and destination are set
  bool isStationsSet() {
    return departure.isNotEmpty && destination.isNotEmpty;
  }
}
