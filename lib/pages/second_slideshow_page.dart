import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mimo_code/color.dart';
import 'package:mimo_code/pages/home_pagee.dart';

class SlideShowScreenTwo extends StatelessWidget {
  const SlideShowScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final isLargeScreen = screenWidth > 600;

    return Scaffold(
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
      backgroundColor: AppColors.appBarColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Text(
                      'Organize your money\nand grow your\nsavings',
                      style: AppTextStyles.customTextStyle,
                    ),
                    SvgPicture.asset('assets/images/masterCard.svg'),
                    SizedBox(height: screenHeight * 0.05),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/rec1.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset('assets/images/rec2.svg'),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: isLargeScreen
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFFEAEAEA),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        padding: EdgeInsets.all(12),
                        child: Center(
                          child:
                              SvgPicture.asset('assets/images/secGoogle.svg'),
                        ),
                      ),
                    ),
                    if (isLargeScreen) SizedBox(width: 20),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Color(0xFFEAEAEA),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Center(
                        child: SvgPicture.asset(
                            'assets/images/apple-color-svgrepo-com.svg'),
                      ),
                    ),
                    if (isLargeScreen) SizedBox(width: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 12),
                        child: Container(
                          width: 227,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEAEA),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                            child: Row(
                              mainAxisAlignment: isLargeScreen
                                  ? MainAxisAlignment.center
                                  : MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Get started',
                                  style: TextStyle(
                                    color: AppColors.appBarColor,
                                    fontSize: screenHeight * 0.025,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.arrow_right_alt_rounded,
                                  size: screenHeight * 0.04,
                                  color: AppColors.appBarColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      TextSpan(
                        text: 'Sign in',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
