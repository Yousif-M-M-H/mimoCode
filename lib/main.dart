import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mimo_code/pages/page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mimo Code',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: GoogleFonts.robotoCondensed().fontFamily,
      ),
      home: HomePage(),
    );
  }
}
