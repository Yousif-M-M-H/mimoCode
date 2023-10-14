import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mimo_code/color.dart';

class SlideShowScreen extends StatelessWidget {
  const SlideShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.appBarColor,
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor,
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: screenWidth * 0.05, top: screenHeight * 0.015),
            child: Text(
              'SKIP',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text(
                        'Over 7 million people\nBank with\nBankbox',
                        style: AppTextStyles.customTextStyle,
                      ),
                      SvgPicture.asset(
                        'assets/images/mycard.svg',
                      ),
                      SizedBox(height: screenHeight * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/images/rec2.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/images/rec1.svg'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
