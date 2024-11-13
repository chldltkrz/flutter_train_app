import 'package:flutter/material.dart';

class Seats extends StatelessWidget {
  bool isSelected;
  Seats({required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: isSelected ? Colors.purple : Colors.grey[300]!,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
