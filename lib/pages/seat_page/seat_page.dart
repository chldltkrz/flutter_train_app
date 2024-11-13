import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/button.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/guide_line.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/heading.dart';

class SeatPage extends StatelessWidget {
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
              Heading("서울", "부산"),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    GuideLine(),
                  ],
                ),
              ),
              Button(),
            ],
          ),
        ));
  }
}
