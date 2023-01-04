import 'package:flutter/material.dart';

class ContactHome extends StatelessWidget {
  const ContactHome({super.key});

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
          'Contact Us',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 38, horizontal: 19),
        child: ListView(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Icon(Icons.call),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: RichText(
                    maxLines: 3,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                        text: 'Phone Number\n',
                        style: TextStyle(
                            color: Color(0xFF4F4F4F),
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                        children: [
                          TextSpan(
                            text: '00972503037851',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontFamily: 'Poppins'),
                          )
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(height: 28),
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Icon(Icons.email),
              ),
              SizedBox(width: 15),
              Expanded(
                child: RichText(
                  maxLines: 4,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                      text: 'Email Address\n',
                      style: TextStyle(
                          color: Color(0xFF4F4F4F),
                          fontSize: 16,
                          fontFamily: 'Poppins'),
                      children: [
                        TextSpan(
                          text: 'Ahmedahmed@gmail.com',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontFamily: 'Poppins'),
                        )
                      ]),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
