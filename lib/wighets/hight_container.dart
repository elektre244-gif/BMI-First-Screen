import 'package:flutter/material.dart';

class HightContainer extends StatefulWidget {

  HightContainer({super.key,});

  @override
  State<HightContainer> createState() => _HightContainerState();
}

class _HightContainerState extends State<HightContainer> {

int height=50;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 189,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff333244),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Height",
            style: TextStyle(color: Color(0xff8B8C9E), fontSize: 30),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
              height.toString(),
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "cm",
                style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),

          Slider(
            min: 0,
            max: 300,
            activeColor: Color(0xffE83D67),
            value:height.toDouble(),
            onChanged: (Value) {
            setState(() {
                height=Value.toInt();
            });
            },
          ),
        ],
      ),
    );
  }
}
