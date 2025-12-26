import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(children: [Icon(Icons.arrow_back), Text("Appointments")]),
          actions: [Icon(Icons.menu, size: 40)],
        ),
        body: Column(
          children: [
            SizedBox(height: 25),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                "Wednesday, 22 May 2019",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
            SizedBox(height: 45),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Mohamed mahmoud", style: TextStyle(fontSize: 20)),
                Row(children: [Icon(Icons.alarm), Text("10:50")]),
              ],
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(" zakare Ali", style: TextStyle(fontSize: 20)),
                Row(children: [Icon(Icons.alarm), Text("12:50")]),
              ],
            ),
            SizedBox(height: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Abdaltawab mohamed", style: TextStyle(fontSize: 20)),
                Row(children: [Icon(Icons.alarm), Text("8:50")]),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Fatma Mahmoud", style: TextStyle(fontSize: 20)),
                    Row(children: [Icon(Icons.alarm), Text("7:50")]),
                  ],
                ),
                SizedBox(width: 150),
                Icon(Icons.close, size: 40),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" Malak Mahmoud", style: TextStyle(fontSize: 20)),
                    Row(children: [Icon(Icons.alarm), Text("4:50")]),
                  ],
                ),
                SizedBox(width: 150),
                Icon(Icons.check, size: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
