import 'package:flutter/material.dart';
import 'package:mimo_code/color.dart';

class StatmentSection extends StatelessWidget {
  const StatmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Current Balance',
              style: TextStyle(fontSize: 16, color: AppColors.appBarColor),
            ),
            Text(
              'EGP 37,288.00',
              style: TextStyle(
                  fontSize: 36,
                  color: AppColors.appBarColor,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Icon(
                  Icons.update,
                  size: 10,
                ),
                Text(
                  'Updated 56 mins ago',
                  style: TextStyle(fontSize: 10),
                ),
              ],
            )
          ],
        ),
        Icon(
          Icons.add_box_outlined,
          size: 40,
          color: AppColors.appBarColor,
        )
      ],
    );
  }
}
