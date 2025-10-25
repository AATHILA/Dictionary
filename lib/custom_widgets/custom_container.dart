import 'package:flutter/material.dart';

import '../main.dart';

class CustomContainer extends StatelessWidget {
  final String count;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;


  const CustomContainer({
    super.key,
    required this.count,
    required this.label,

    this.backgroundColor = Colors.white,
    this.textColor = Colors.lightBlueAccent,

  });

  @override
  Widget build(BuildContext context) {


    return Container(
      height: width * 0.25,
      width: width * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width * 0.03),
        color: backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: width * 0.01,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            count,
            style: TextStyle(
              fontSize: width * 0.08,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
          Text(
            label.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: width * 0.035,
              color: Colors.grey.shade800.withOpacity(0.7),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
