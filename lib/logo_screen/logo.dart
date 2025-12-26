import 'package:flutter/material.dart';

import 'screens.dart/home_screen.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
   home: HomeScreen(
     
    )
    );
  }}