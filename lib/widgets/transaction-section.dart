import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionSection extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String date;
  final String price;
  final Color priceColor;
  const TransactionSection(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.date,
      required this.price,
      required this.priceColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 12),
            leading: Container(
              width: 50.0,
              height: 50.0,
              decoration: BoxDecoration(
                color: Color(0xFFECF4FF),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  imageUrl,
                  width: 24,
                  height: 24,
                ),
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 10, color: Color(0xffA4A4A4)),
                ),
              ],
            ),
            trailing: Text(
              price,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold, color: priceColor),
            ),
          ),
        ),
      ),
    );
  }
}
