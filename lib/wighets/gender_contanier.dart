import 'package:flutter/material.dart';

class GenderContaner extends StatelessWidget {
  const GenderContaner({super.key, required this.name, required this.icon, this.onTap, required this.color});
  final String name;
  final IconData icon;
    final Function()? onTap;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap:onTap,
        child: Container(
          height: 180,
          width: 155,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff24263B),
          ),
          child: Column(
            children: [
              Icon(icon, size: 120, color: Colors.white),
              Text(
                name,
                style: TextStyle(fontSize: 20, color: Color(0xff8B8C9E)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
