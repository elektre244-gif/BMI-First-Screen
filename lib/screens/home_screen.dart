import 'package:flutter/material.dart';
import 'package:flutter_application_1/wighets/age_container.dart';
import 'package:flutter_application_1/wighets/gender_contanier.dart';
import 'package:flutter_application_1/wighets/hight_container.dart';
import 'package:flutter_application_1/wighets/wight_container.dart';

import '../wighets/gender_contanier.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C2135),
      appBar: AppBar(
        backgroundColor: const Color(0xff00000040),
        title: const Text(
          "BMI Calculator",
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
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
            HightContainer(),

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
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 55,
        color: const Color(0xffE83D67),
        alignment: Alignment.center,
        child: const Text("calculate", style: TextStyle(fontSize: 35)),
      ),
    );
  }
}
