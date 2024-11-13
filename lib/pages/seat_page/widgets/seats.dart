import 'package:flutter/material.dart';

// drawing Seats that are taken and empty yet
// if the seat is selected, the color will be changed to purple
// if the seat is already taken, the color will be remained as purple after reservation
// if the seat is empty, the color will be grey
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
          // if the seat is already selected, show the snackbar
          // selectedSeat is set that contains the selected seat information
          if (selectedSeat.contains(seatInfo)) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('이미 선택된 좌석입니다.'),
              duration: Duration(seconds: 2),
            ));
            return;
          }
          // otherwise, change the color of the seat
          // and add the seat information to the selectedSeat list
          // ************ unfortunately, once seat is selected, it cannot be deselected ************
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
        // drawing the seat
        // if the seat is selected, the color will be changed to purple
        // if the seat is already taken, the color will be remained as purple after reservation
        // if the seat is empty, the color will be grey
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
