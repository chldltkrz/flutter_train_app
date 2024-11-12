import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stations extends StatelessWidget {
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
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("출발역",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    Text(
                      "선택",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
                Spacer(),
                Container(width: 2, color: Colors.grey[400], height: 50),
                Spacer(),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("도착역",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    Text(
                      "선택",
                      style: TextStyle(fontSize: 40),
                    )
                  ],
                ),
                Spacer(),
              ],
            )));
  }
}
