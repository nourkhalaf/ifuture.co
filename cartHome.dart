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
          Expanded(
            child: ListView(
              children: [
                CartItem(),
                CartItem(),
                CartItem(),
                CartItem(),
              ],
            ),
          ),
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
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            child: Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                  )),
                  elevation: MaterialStateProperty.all(0),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 26, vertical: 13)),
                  backgroundColor: MaterialStateProperty.all(Color(0xFF1B3944)),
                ),
                child: Text(
                  'Buys 4 items(700.99\$)',
                  style:
                      TextStyle(fontFamily: 'Poppins', fontSize: 16, height: 2),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Image.network(
                      height: 78,
                      width: 78,
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgyw5XRKEnv38UkzQkYedZ21N0MmCBjaPI9cXw30anzQ&s'),
                  SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Gun Sport Relaxation Fitness ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Poppins'),
                        overflow: TextOverflow.clip,
                      ),
                      Text('200 in stock',
                          style: TextStyle(
                              color: Color(0xFF7DCA95),
                              fontSize: 13,
                              fontFamily: 'Poppins')),
                      Row(
                        children: [
                          Text('99.99\$',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                          SizedBox(width: 8),
                          Text('138.00\$',
                              style: TextStyle(
                                  color: Color(0xFFE93D38),
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.lineThrough)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9), shape: BoxShape.circle),
                    //padding: const EdgeInsets.all(5),

                    child: GestureDetector(
                        child: const Icon(Icons.remove,
                            size: 15, color: Colors.black),
                        onTap: () {}),
                  ),
                  const SizedBox(width: 12),
                  Text('1'),
                  const SizedBox(width: 12),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9), shape: BoxShape.circle),
                    //padding: const EdgeInsets.all(5),

                    child: GestureDetector(
                        child: const Icon(Icons.add,
                            size: 15, color: Colors.black),
                        onTap: () {}),
                  ),
                  Spacer(),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete_forever_rounded,
                      color: Color(0xFF828282),
                      size: 18,
                    ),
                    label: Text(
                      'Delete',
                      style: TextStyle(
                          color: Color(0xFF828282),
                          fontSize: 14,
                          fontFamily: 'Poppins'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Color(0xFFF2F2F2),
        ),
      ],
    );
  }
}
