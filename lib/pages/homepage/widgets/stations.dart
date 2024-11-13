import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/station_list/station_list_page.dart';

class Stations extends StatelessWidget {
  final void Function(String) setDeparture;
  final void Function(String) setDestination;
  final String departure;
  final String destination;
  Stations(
      {required this.setDeparture,
      required this.setDestination,
      required this.departure,
      required this.destination});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("출발역",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                StationListPage(onChanged: setDeparture)));
                      },
                      child: Text(
                        departure.length == 0 ? "선택" : departure,
                        style: TextStyle(fontSize: 40),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Container(width: 2, color: Colors.grey[400], height: 50),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("도착역",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                StationListPage(onChanged: setDestination)));
                      },
                      child: Text(
                        destination.length == 0 ? "선택" : destination,
                        style: TextStyle(fontSize: 40),
                      ),
                    )
                  ],
                ),
                Spacer(),
              ],
            )));
  }
}
