import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/guide_line.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/heading.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/seat_button.dart';

class SeatPage extends StatelessWidget {
  String destination;
  String departure;
  SeatPage({required this.departure, required this.destination});

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
              Heading(destination, departure),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GuideLine(),
                  ],
                ),
              ),
              SeatButton(),
            ],
          ),
        ));
  }
}
