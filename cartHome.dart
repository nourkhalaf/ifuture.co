import 'package:flutter/material.dart';

class CartHome extends StatelessWidget {
  const CartHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Cart',
          style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
        ),
        backgroundColor: const Color(0xFF1B3944),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            height: 164,
            color: Color(0xFFF2F2F2),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 24),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(12),
                              fillColor: Colors.white,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                  color: Color(0xFFC6C6C6),
                                  width: 1,
                                ),
                              ),
                              hintText: 'Enter coupon code',
                              hintStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  color: Color(0xFF707070))),
                          validator: (val) {},
                          onSaved: (val) {},
                        ),
                      ),
                      SizedBox(width: 8),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0),
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFFFB434)),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 10),
                          child: Text(
                            'Apply',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 14),
                  child: Row(
                    children: [
                      Text(
                        'Total products',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 14,
                            color: Color(0xFF4F4F4F)),
                      ),
                      Spacer(),
                      Text(
                        '688.99\$',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Total including VAT',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF4F4F4F)),
                    ),
                    Spacer(),
                    Text(
                      '700.99\$',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
