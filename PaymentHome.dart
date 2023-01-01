import 'package:dotted_border/dotted_border.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:ifuture_co/widgets/CircularPercentIndicatorItem.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PaymentHome extends StatefulWidget {
  @override
  State<PaymentHome> createState() => _PaymentHomeState();
}

class _PaymentHomeState extends State<PaymentHome> {
  String _radioValue = 'CreditCard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        title: Text(
          ' Payment',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Color(0xFFE9ECED),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
              child: Row(
                children: [
                  Text(
                    ' Payment',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  Spacer(),
                  CircularPercentIndicatorItem('3/3', 1),
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
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
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
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'rfdf, fsdugsdgjkskg, Gaza FL 33311, United States',
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
                    'Method',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Free Shipping · Free',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF707070)),
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(16, 0, 16, 28),
              child: DottedBorder(
                color: Color(0xFF828282),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                strokeWidth: 1,
                dashPattern: [4, 4],
                radius: Radius.circular(8),
                borderType: BorderType.RRect,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                            activeColor: Color(0xFFFFB434),
                            value: 'CreditCard',
                            groupValue: _radioValue,
                            onChanged: (value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            }),
                        Text('Credit Card',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: _radioValue == 'CreditCard'
                                    ? Color(0xFFFFB434)
                                    : Colors.black)),
                        Spacer(),
                        //Image.asset('lib/images/amex.png'),
                        //Image.asset('lib/images/mastercard'),
                        //Image.asset('lib/images/visa.png'),
                      ],
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
                      'Card holder name ',
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Color(0xFFF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide.none),
                          hintText: 'Enter card holder name ',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF707070))),
                      validator: (val) {},
                      controller: TextEditingController(),
                      onSaved: (val) {},
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Card number',
                      style: const TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Colors.black),
                    ),
                    SizedBox(height: 6),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(12),
                          fillColor: Color(0xFFF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide.none),
                          hintText: 'Enter card number',
                          hintStyle: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Color(0xFF707070))),
                      validator: (val) {},
                      onSaved: (val) {},
                    ),
                    SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Expiry date',
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Colors.black),
                              ),
                              SizedBox(height: 6),
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    fillColor: Color(0xFFF2F2F2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none),
                                    hintText: '00/00',
                                    hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Color(0xFF707070))),
                                validator: (val) {},
                                onSaved: (val) {},
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 9.5),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CVV',
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Colors.black),
                              ),
                              SizedBox(height: 6),
                              TextFormField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(12),
                                    fillColor: Color(0xFFF2F2F2),
                                    filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none),
                                    hintText: 'Enter cvv card',
                                    hintStyle: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontSize: 14,
                                        color: Color(0xFF707070))),
                                validator: (val) {},
                                onSaved: (val) {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    DottedLine(
                      direction: Axis.horizontal,
                      lineLength: double.infinity,
                      lineThickness: 1.0,
                      dashColor: Color(0xFF828282),
                    ),
                    SizedBox(height: 12),
                    Row(
                      children: [
                        Radio(
                            activeColor: Color(0xFFFFB434),
                            value: 'PayPal',
                            groupValue: _radioValue,
                            onChanged: (value) {
                              setState(() {
                                _radioValue = value!;
                              });
                            }),
                        Text('PayPal',
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Poppins',
                                color: _radioValue == 'PayPal'
                                    ? Color(0xFFFFB434)
                                    : Colors.black)),
                        Spacer(),
                        // Image.asset('lib/images/paypal.png',
                        //     width: 56, height: 56, fit: BoxFit.contain),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //Spacer(),
            SizedBox(height: 10),
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
                      Text(
                        'Subtotal',
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color(0xFF333333)),
                      ),
                      Spacer(),
                      Text(
                        '700.99\$',
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color(0xFF333333)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Shipping',
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color(0xFF333333)),
                      ),
                      Spacer(),
                      Text(
                        'Free',
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color(0xFF333333)),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        'Total',
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            color: Color(0xFF4F4F4F)),
                      ),
                      Spacer(),
                      Text(
                        '700.99\$',
                        style: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 23),
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
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
                        'Pay now',
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
      ),
    );
  }
}
