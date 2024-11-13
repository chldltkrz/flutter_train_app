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

  _SeatPageState(this.destination, this.departure);

  List<String> seatInfo = [];
  void setSeatInfo(String seatInfoString) {
    setState(() {
      this.seatInfo.add(seatInfoString);
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
              Heading(
                widget.departure,
                widget.destination,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GuideLine(setSeatInfo: setSeatInfo),
                  ],
                ),
              ),
              SeatButton(seatInfo: seatInfo),
            ],
          ),
        ));
  }
}
