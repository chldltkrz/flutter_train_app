import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_train_app/pages/station_list/widgets/item.dart';

class StationListPage extends StatefulWidget {
  StationListPage({required this.onChanged});
  final void Function(String) onChanged;

  @override
  State<StationListPage> createState() => _StationListPageState();
}

class _StationListPageState extends State<StationListPage> {
  static List<String> selectedStations = []; // Track selected stations

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('출발역'),
      ),
      body: FutureBuilder<List<String>>(
        future: loadAssets(), // Load data asynchronously
        builder: (context, snapshot) {
          // Check if the Future is still loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          // Check if an error occurred
          else if (snapshot.hasError) {
            return Center(child: Text("Error loading stations"));
          }
          // When the Future completes with data
          else if (snapshot.hasData) {
            List<String> stations = snapshot.data!
                .where((station) => !selectedStations.contains(station))
                .toList();
            if (stations.isEmpty) {
              return Center(child: Text("No station available"));
            }
            return Column(
              children: [
                ...stations.map((station) => GestureDetector(
                    onTap: () => {
                          widget.onChanged(station),
                          Navigator.pop(context),
                          if (selectedStations.length > 1)
                            {
                              selectedStations.remove(selectedStations.first),
                            },
                          setState(() => selectedStations.add(station))
                        },
                    child: Item(stationName: station))),
              ],
            );
          }
          // Fallback for an empty snapshot
          return Center(child: Text("No stations available"));
        },
      ),
    );
  }

  Future<List<String>> loadAssets() async {
    // Load the file content as a string and split it by commas
    String loadedString = await rootBundle.loadString("assets/stations.txt");
    return loadedString.split(",");
  }
}
