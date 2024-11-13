import 'package:flutter/material.dart';
import 'package:flutter_train_app/pages/seat_page/widgets/seats.dart';

class GuideLine extends StatefulWidget {
  void Function(String) setSeatInfo;
  GuideLine({required this.setSeatInfo});

  @override
  State<GuideLine> createState() => _GuideLineState();
}

class _GuideLineState extends State<GuideLine> {
  static Set<String> selectedSeat = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            children: [
              Spacer(),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(width: 4),
                  Text('선택됨'),
                ],
              ),
              SizedBox(width: 20),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  SizedBox(width: 4),
                  Text('선택안됨'),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              children: [
                _buildSeatColumn("A"),
              ],
            ),
            Column(
              children: [
                _buildSeatColumn("B"),
              ],
            ),
            Column(
              children: [
                ...List.generate(
                    20,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 8),
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            child: Text(
                              (index + 1).toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        )),
              ],
            ),
            Column(
              children: [
                _buildSeatColumn("C"),
              ],
            ),
            Column(
              children: [_buildSeatColumn("D")],
            ),
          ],
        )
      ],
    );
  }

  Widget _buildSeatColumn(String label) {
    return Column(
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 18),
        ),
        ...List.generate(
          20,
          (index) => Seats(
            isSelected: selectedSeat.contains("$label-${index + 1}"),
            seatInfo: "$label-${index + 1}",
            setSeatInfo: widget.setSeatInfo,
            selectedSeat: selectedSeat,
          ),
        ),
      ],
    );
  }
}
