import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WightContainer extends StatelessWidget {
  WightContainer({
    super.key,
    required this.wight,
    this.increaseOnTap,
    this.decreasOnTap,
  });
  int wight = 30;
  final void Function()? increaseOnTap;
  final void Function()? decreasOnTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 15),
        width: 155,
        height: 180,
        decoration: BoxDecoration(
          color: Color(0xff333244),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text("Wight", style: TextStyle(fontSize: 20, color: Colors.white)),
            SizedBox(height: 5),
            Text(
              wight.toString(),
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 21),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.small(
                  heroTag: 1,
                  onPressed: decreasOnTap,
                  backgroundColor: Color(0xff888C9E),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.remove, color: Colors.white),
                ),
                FloatingActionButton.small(
                  heroTag: 2,
                  onPressed: increaseOnTap,
                  backgroundColor: Color(0xff888C9E),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
