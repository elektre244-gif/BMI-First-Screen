import 'package:flutter/material.dart';

void main() {
  runApp(BmiApp());
}

class BmiApp extends StatelessWidget {
  const BmiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1C2135),
        appBar: AppBar(
          backgroundColor: Color(0xff00000040),
          title: Text(
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
              //ginder row
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 180,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff24263B),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.male, size: 120, color: Colors.white),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff8B8C9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 9),
                  Expanded(
                    child: Container(
                      height: 180,
                      width: 155,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff24263B),
                      ),
                      child: Column(
                        children: [
                          Icon(Icons.female, size: 120, color: Colors.white),
                          Text(
                            "female",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff8B8C9E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
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
                          "150",
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
                      value: 150,
                      onChanged: (Value) {
                        print(Value);
                      },
                    ),
                  ],
                ),
              ),

              SizedBox(height: 29),
              //wigth & age row
              Row(
                children: [
                  Expanded(
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
                          Text(
                            "Wight",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "60",
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
                                onPressed: () {},
                                backgroundColor: Color(0xff888C9E),

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                              FloatingActionButton.small(
                                onPressed: () {},
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
                  ),
                  SizedBox(width: 9),
                  Expanded(
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
                          Text(
                            "Age",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text(
                            "20",
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
                                onPressed: () {},
                                backgroundColor: Color(0xff888C9E),

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(Icons.remove, color: Colors.white),
                              ),
                              FloatingActionButton.small(
                                onPressed: () {},
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
                  ),
                ],
              ),
             
            SizedBox(height:80),
              Container(
                
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE83D67),
                ),
                
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("calculate",style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  ),),]
              )
          )]
          ),
        ),
     
      ),
    );
  }
}
