import 'package:flutter/material.dart';

class Seats extends StatefulWidget {
  Seats(
      {required this.isSelected,
      required this.seatInfo,
      required this.setSeatInfo,
      required this.selectedSeat});
  bool isSelected;
  String seatInfo;
  void Function(String) setSeatInfo;
  Set<String> selectedSeat;
  @override
  State<Seats> createState() => _SeatsState(
      isSelected: isSelected,
      seatInfo: seatInfo,
      setSeatInfo: setSeatInfo,
      selectedSeat: selectedSeat);
}

class _SeatsState extends State<Seats> {
  bool isSelected;
  String seatInfo;
  void Function(String) setSeatInfo;
  Set<String> selectedSeat;
  _SeatsState(
      {required this.isSelected,
      required this.seatInfo,
      required this.setSeatInfo,
      required this.selectedSeat});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
            if (isSelected) {
              setSeatInfo(seatInfo);
              selectedSeat.add(seatInfo);
            } else {
              setSeatInfo("");
            }
          });
        },
        child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: isSelected ? Colors.purple : Colors.grey[300]!,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
            )),
      ),
    );
  }
}
