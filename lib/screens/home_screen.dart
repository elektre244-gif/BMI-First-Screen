import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/result_screen.dart';
import 'package:flutter_application_1/wighets/age_container.dart';
import 'package:flutter_application_1/wighets/app_bar.dart';
import 'package:flutter_application_1/wighets/gender_contanier.dart';
import 'package:flutter_application_1/wighets/wight_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool IsMale = false;
  bool IsFemale = false;
  int wight = 30;
  int age = 20;
  int height = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: CostamAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 21),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                GenderContaner(
                  name: "Male",
                  icon: Icons.male,
                  color: IsMale ? Colors.red : Color(0xff24263B),
                  onTap: () {
                    setState(() {
                      IsFemale = false;
                      IsMale = true;
                    });
                  },
                ),
                SizedBox(width: 9),
                GenderContaner(
                  name: "Female",
                  icon: Icons.female,
                  color: IsFemale ? Color(0xff24263B) : Colors.red,
                  onTap: () {
                    setState(() {
                      IsMale = false;
                      IsFemale = true;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 25),
            //hight container
            Container(
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
                    value: height.toDouble(),
                    onChanged: (Value) {
                      setState(() {
                        height = Value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 29),
            //wigth & age row
            Row(
              children: [
                WightContainer(
                  wight: wight,
                  increaseOnTap: () {
                    setState(() {
                      wight++;
                    });
                  },
                  decreasOnTap: () {
                    if (wight > 30) {
                      setState(() {
                        wight--;
                      });
                    }
                  },
                ),
                SizedBox(width: 9),
                AgeContainer(
                  age: age,
                  increaseOnTap: () {
                    setState(() {
                      age++;
                    });
                  },
                  decreasOnTap: () {
                    if (age > 10) {
                      setState(() {
                        age--;
                      });
                    }
                  },
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          double finalHeight = height / 100;
          double bmiResult = wight / pow(finalHeight, 2);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ResultScreen(bmiResult, result: bmiResult),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          height: 55,
          color: const Color(0xffE83D67),
          alignment: Alignment.center,
          child: const Text("calculate", style: TextStyle(fontSize: 35)),
        ),
      ),
    );
  }
}
