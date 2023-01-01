import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ifuture_co/widgets/CircularPercentIndicatorItem.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ShippingHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        title: Text(
          'Shipping',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            color: Color(0xFFE9ECED),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Shipping',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
                ),
                Spacer(),
                CircularPercentIndicatorItem('2/3', 0.6),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            margin: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Color(0xFFE9ECED),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
                ),
                SizedBox(height: 4),
                Text(
                  'ahmed@gmail.com',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF707070)),
                ),
                SizedBox(height: 12),
                DottedLine(
                  direction: Axis.horizontal,
                  lineLength: double.infinity,
                  lineThickness: 1.0,
                  dashLength: 4.0,
                  dashColor: Color(0xFF828282),
                ),
                SizedBox(height: 12),
                Text(
                  'Ship To',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
                ),
                SizedBox(height: 4),
                Text(
                  'rfdf, fsdugsdgjkskg, Gaza FL 33311, United States',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF707070)),
                ),
              ],
            ),
          ),
          //SizedBox(height: 12),
          Spacer(),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
              color: Color(0xFFE9ECED),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/images/delivery.png',
                      width: 28.22,
                      height: 21,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Shipping Method',
                      style: const TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          color: Color(0xFF4F4F4F)),
                    ),
                    Spacer(),
                    Text(
                      'Free',
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(height: 29),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.0),
                      )),
                      elevation: MaterialStateProperty.all(0),
                      padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                              horizontal: 26, vertical: 13)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF1B3944)),
                    ),
                    child: Text(
                      'Continue to payment',
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16, height: 2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
