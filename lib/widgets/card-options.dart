import 'package:flutter/material.dart';
import 'package:mimo_code/color.dart';

class CardOptions extends StatelessWidget {
  final IconData icon;
  final String title;
  CardOptions({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Color(0xFFEAEAEA),
            borderRadius: BorderRadius.circular(50),
          ),
          padding: EdgeInsets.all(15),
          child: Center(
            child: Icon(
              icon,
              color: AppColors.appBarColor,
              size: 30,
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 12, color: AppColors.appBarColor),
        )
      ],
    );
  }
}
