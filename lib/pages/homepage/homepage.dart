import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/homepage/widgets/button.dart';
import 'package:flutter_train_app/pages/homepage/widgets/stations.dart';

class Homepage extends StatelessWidget {
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
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Stations(), SizedBox(height: 20), Button()]),
        ),
      ),
    );
  }
}
