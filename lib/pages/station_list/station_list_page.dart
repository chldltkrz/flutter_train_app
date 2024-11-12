import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/widget/item.dart';

class StationListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('출발역'),
      ),
      body: Column(
        children: [
          ...getStations().map((station) => Item(stationName: station)),
        ],
      ),
    );
  }

  List<String> getStations() {
    List<String> stations = [];
    try {
      final file = File(
          '/Users/issacchoi/development/project/flutter_train_app/assets/stations.txt');
      final contents = file.readAsStringSync();
      stations = contents.split(',');
    } on FormatException {
      print('Invalid data');
    } on FileSystemException {
      print('File not found');
    } catch (e) {
      print('Unknown error: $e');
    }
    return stations;
  }
}
