import 'package:flutter/material.dart';

class MyAccountHome extends StatelessWidget {
  const MyAccountHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        title: Text(
          'My Account',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              child: Icon(
                Icons.person,
                color: Color(0xFF1B3944),
                size: 40,
              ),
              radius: 47.5,
              backgroundColor: Color(0xFF1B3944).withOpacity(0.1),
            ),
            SizedBox(height: 18),
            Text(
              'Welcom\nAhmed Alshanti',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 28),
            listItem(
              'Orders',
              Icon(
                Icons.shopping_bag_rounded,
                color: Color(0xFFAF52DE),
              ),
            ),
            listItem(
              'Info',
              Icon(
                Icons.info_rounded,
                color: Color(0xFFFFB434),
              ),
            ),
            listItem(
              'Address',
              Icon(
                Icons.person_pin_circle_rounded,
                color: Color(0xFF5AC8FA),
              ),
            ),
            listItem(
              'Contact us',
              Icon(
                Icons.call,
                color: Color(0xFF00A90C),
              ),
            ),
            listItem(
              'Logout',
              Icon(
                Icons.logout,
                color: Color(0xFFEB5757),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget listItem(String title, Icon icon) {
    return Column(
      children: [
        Divider(
          thickness: 1,
          color: Color(0xFFF2F2F2),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 10, 8, 10),
          child: Row(
            children: [
              icon,
              SizedBox(width: 17),
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  color: Colors.black,
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF242424),
                size: 12,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
