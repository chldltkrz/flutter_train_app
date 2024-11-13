import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/heading.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/guide_line.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/seat_button.dart';

class SeatPage extends StatefulWidget {
  String destination;
  String departure;

  SeatPage({required this.departure, required this.destination});

  @override
  State<SeatPage> createState() => _SeatPageState(destination, departure);
}

class _SeatPageState extends State<SeatPage> {
  String departure;
  String destination;
  static Set<String> selectedSeat = {};

  _SeatPageState(this.destination, this.departure);

  // List to store the selected seat information
  // e.g. ['A-1', 'B-2', 'C-3']
  // This list will be passed to the SeatButton widget
  List<String> seatInfo = [];
  void setSeatInfo(String seatInfoString) {
    setState(() {
      if (seatInfo.contains(seatInfoString)) {
        seatInfo.remove(seatInfoString);
      } else {
        seatInfo.add(seatInfoString);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('좌석 선택'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              // Heading to show the departure and destination
              Heading(
                widget.departure,
                widget.destination,
              ),
              // Expanded widget to allow the ListView to take up the remaining space
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GuideLine(
                        setSeatInfo: setSeatInfo, selectedSeat: selectedSeat),
                  ],
                ),
              ),
              // SeatButton widget to show the button to confirm the reservation
              // The seatInfo list is passed to the SeatButton widget
              SeatButton(
                seatInfo: seatInfo,
                selectedSeat: selectedSeat,
              ),
            ],
          ),
        ));
  }
}
