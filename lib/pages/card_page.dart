import 'package:flutter/material.dart';
import 'package:mimo_code/color.dart';
import 'package:mimo_code/widgets/card_controls.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back,
              color: AppColors.appBarColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'My Card',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.appBarColor),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, size: 32),
            color: AppColors.appBarColor,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings, size: 32),
            color: AppColors.appBarColor,
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                child: Image.asset('assets/images/secCard.jfif'),
              ),
              Container(
                height: 900,
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Card Controls',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: AppColors.appBarColor),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ListView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        CardControls(title: 'Lock Screen'),
                        CardControls(title: 'Allow sending money'),
                        CardControls(title: 'Allow receiving money'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
