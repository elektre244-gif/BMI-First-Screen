import 'package:flutter/material.dart';

class CostamAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CostamAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff24263B),
      title: const Text(
        "BMI Calculator",
        style: TextStyle(
          color: Color(0xffFFFFFF),
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
