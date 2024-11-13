import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatButton extends StatelessWidget {
  List<String> seatInfo;
  SeatButton({required this.seatInfo});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            onPressed: () {
              // Show a snackbar if no seat is selected
              seatInfo.length == 0
                  ? ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('좌석을 선택해주세요.'),
                      duration: Duration(seconds: 2),
                    ))
                  // Show a dialog to confirm the reservation
                  : showCupertinoDialog(
                      context: context,
                      builder: (context) {
                        return CupertinoAlertDialog(
                          title: Text('예매 하시겠습니까?'),
                          content: Text("좌석 : ${seatInfo.join(', ')}"),
                          actions: [
                            CupertinoDialogAction(
                              child: Text('취소'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            CupertinoDialogAction(
                              child: Text('확인'),
                              // Pop the dialog and the SeatPage
                              // Show a snackbar to confirm the reservation
                              onPressed: () {
                                Navigator.pop(context);
                                Navigator.of(context).pop();
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: Center(
                                    child: Text(
                                      '예약이 확정되었습니다.',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  duration: Duration(seconds: 2),
                                ));
                              },
                            ),
                          ],
                        );
                      });
            },
            child: Text(
              "예매하기",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ),
    );
  }
}
