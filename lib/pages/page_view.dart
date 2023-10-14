import 'package:flutter/material.dart';
import 'package:mimo_code/pages/second_slideshow_page.dart';
import 'package:mimo_code/pages/slideshow_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
    SlideShowScreen(),
    SlideShowScreenTwo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: LayoutBuilder(
          //     builder: (context, constraints) {
          //       final screenHeight = constraints.maxHeight;
          //       final screenWidth = constraints.maxWidth;
          //       final marginBottom = screenHeight * 0.40;

          //       return Container(
          //         margin: EdgeInsets.only(bottom: marginBottom),
          //         child: SmoothPageIndicator(
          //           controller: _pageController,
          //           count: 2,
          //           effect: SwapEffect(
          //             dotColor: Colors.grey,
          //             activeDotColor: Colors.white,
          //             dotHeight: 0.005 * screenHeight,
          //             dotWidth: 0.1 * screenWidth,
          //             spacing: 0.02 * screenWidth,
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
