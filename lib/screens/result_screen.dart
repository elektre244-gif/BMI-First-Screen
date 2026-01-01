import 'package:flutter/material.dart';
import 'package:flutter_application_1/wighets/app_bar.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(double bmiResult, {super.key, required this.result});
  final double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CostamAppBar(),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 40),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Color(0xff333244),
                ),
                height: 303,
                width: 319,

                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    spacing: 40,
                    children: [
                      Text(
                        resultText(),
                        style: TextStyle(
                          color: Color(0xff21BF73),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        result.toStringAsFixed(2),
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),

                      Text(
                        statusbody,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff8B8C9E),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String statusbody = "";
  String resultText() {
    if (result < 18.5) {
      statusbody = "You are underWieght.Try to eat more nutritious food";
      return "uder Weight";
    } else if (result >= 18.5 && result < 24.9) {
      statusbody = "You are normel body Weight .Good Jop";
      return "normal";
    } else if (result >= 25 && result < 30) {
      statusbody = "You are over Weight . consider regular exercise";
      return "over Wieght";
    } else {
      statusbody = "You are obese. It's recommended to consult a doctor ";
      return "obese";
    }
  }
}
