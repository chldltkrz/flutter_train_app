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
      final uri = Uri.file('assets/stations.txt');
      final file = File.fromUri(uri);
      print("파일 경로 ${file.path}");
      print("파일 존재 여부 ${file.existsSync()}");
      final contents = file.readAsStringSync();
      stations = contents.split(',');
      print("현재역 $stations");
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
