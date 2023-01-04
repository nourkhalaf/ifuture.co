import 'package:flutter/material.dart';

class OrdersHome extends StatelessWidget {
  const OrdersHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        title: Text(
          'Orders',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          OrderItem(),
          OrderItem(),
          OrderItem(),
          OrderItem(),
        ],
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                      height: 78,
                      width: 78,
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgyw5XRKEnv38UkzQkYedZ21N0MmCBjaPI9cXw30anzQ&s'),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gun Sport Relaxation Fitness ',
                          maxLines: 3,
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: 'Poppins'),
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
                  ),
                  Text(
                    '1 week',
                    style: const TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          height: 1,
          color: Color(0xFFF2F2F2),
        ),
      ],
    );
  }
}
