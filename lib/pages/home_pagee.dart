import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mimo_code/color.dart';
import 'package:mimo_code/pages/card_page.dart';
import 'package:mimo_code/widgets/card-options.dart';
import 'package:mimo_code/widgets/statement-section.dart';
import 'package:mimo_code/widgets/transaction-section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Text(
          'HOME',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.appBarColor),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(15.0), child: StatmentSection()),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyCard()),
                    );
                  },
                  child: Image.asset('assets/images/card.jfif')),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CardOptions(icon: Icons.wallet, title: 'Transactions'),
                CardOptions(icon: Icons.arrow_outward_rounded, title: 'Send'),
                CardOptions(icon: Icons.call_received_sharp, title: 'Request'),
                CardOptions(icon: Icons.more_horiz_rounded, title: 'More'),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                    offset: Offset(1, 0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent transactions',
                        style: TextStyle(
                          color: Color(0xff093371),
                          fontSize: 16,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'last week',
                            style: TextStyle(
                              color: AppColors.appBarColor,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 14,
                            color: AppColors.appBarColor,
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ListView(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      TransactionSection(
                        imageUrl: 'assets/images/spotify-color-svgrepo-com.svg',
                        title: 'Spotfiy',
                        date: '12 June - 12:34 AM',
                        price: 'EGP 84.00',
                        priceColor: Colors.black,
                      ),
                      TransactionSection(
                        imageUrl: 'assets/images/amazon-color-svgrepo-com.svg',
                        title: 'Amazon Egypt',
                        date: '11 June - 8:34 PM',
                        price: 'EGP 1,056.13',
                        priceColor: Colors.black,
                      ),
                      TransactionSection(
                        imageUrl: 'assets/images/apple-color-svgrepo-com.svg',
                        title: 'Apple',
                        date: '11 June - 8:34 PM',
                        price: '+ EGP 30,000.00',
                        priceColor: Color(0xff08B747),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
