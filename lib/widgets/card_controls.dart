import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'package:mimo_code/color.dart';

class CardControls extends StatefulWidget {
  final String title; // Add the required title field
  const CardControls({super.key, required this.title});

  @override
  State<CardControls> createState() => _CardControlsState();
}

class _CardControlsState extends State<CardControls> {
  final _controller = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.00),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5F5F5),
            borderRadius: BorderRadius.circular(16),
          ),
          child: ListTile(
            leading: Text(
              widget.title, // Use the provided title here
              style: TextStyle(
                fontSize: 18,
                color: AppColors.CardControlColor,
              ),
            ),
            trailing: AdvancedSwitch(
              controller: _controller,
            ),
          ),
        ),
      ),
    );
  }
}
