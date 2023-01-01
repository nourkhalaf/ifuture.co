// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularPercentIndicatorItem extends StatelessWidget {
  final String title;
  final double percent;
  const CircularPercentIndicatorItem(
    this.title,
    this.percent,
  );

  @override
  Widget build(BuildContext context) {
    return new CircularPercentIndicator(
      animation: true,
      animationDuration: 1000,
      radius: 22.5,
      lineWidth: 5.0,
      percent: 0.6,
      circularStrokeCap: CircularStrokeCap.round,
      center: new Text(
        '2/3',
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Tajawal',
            fontWeight: FontWeight.w500,
            color: Colors.black),
      ),
      progressColor: Color(0xFF166C9D),
      backgroundColor: Color.fromRGBO(0, 0, 0, 0.2),
    );
  }
}
