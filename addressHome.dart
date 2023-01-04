import 'package:flutter/material.dart';

class AddressHome extends StatelessWidget {
  const AddressHome({super.key});

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
          'Address',
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
          AddressItem(),
          AddressItem(),
          AddressItem(),
          AddressItem(),
        ],
      ),
    );
  }
}

class AddressItem extends StatelessWidget {
  const AddressItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(16, 16, 20, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      maxLines: 2,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          text: 'Name : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                          children: [
                            TextSpan(
                              text: 'Home',
                              style: TextStyle(
                                  color: Color(0xFF4F4F4F),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            )
                          ]),
                    ),
                    RichText(
                      maxLines: 2,
                      softWrap: false,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                          text: 'Address : ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                          children: [
                            TextSpan(
                              text: 'Al Nasser street Gaza Palestine',
                              style: TextStyle(
                                  color: Color(0xFF4F4F4F),
                                  fontSize: 14,
                                  fontFamily: 'Poppins'),
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 15),
              Icon(Icons.edit),
              SizedBox(width: 25),
              Icon(
                Icons.delete,
                color: Color(0xFFEB5757),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1,
          thickness: 1,
          color: Color(0xFFF2F2F2),
        ),
      ],
    );
  }
}
