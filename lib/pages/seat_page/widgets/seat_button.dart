import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatButton extends StatelessWidget {
  String seatInfo;
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
              showCupertinoDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: Text('예매 하시겠습니까?'),
                      content: Text("좌석 : $seatInfo"),
                      actions: [
                        CupertinoDialogAction(
                          child: Text('취소'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        CupertinoDialogAction(
                          child: Text('확인'),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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
