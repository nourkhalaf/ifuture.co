import 'package:flutter/material.dart';

class ProfileHome extends StatelessWidget {
  const ProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          TextButton(
              style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 17))),
              onPressed: () {},
              child: Text(
                'Save',
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    color: Color(0xFFFFB434)),
              ))
        ],
        elevation: 0,
        title: Text(
          'Profile',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
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
              SizedBox(height: 28),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'First Name',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    initialValue: 'ahmed',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF333333)),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      fillColor: Color(0xFFF2F2F2),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                    ),
                    validator: (val) {},
                    onSaved: (val) {},
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Last Name',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    initialValue: 'alshanti',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF333333)),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      fillColor: Color(0xFFF2F2F2),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                    ),
                    validator: (val) {},
                    onSaved: (val) {},
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Your Email',
                    style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black),
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    initialValue: 'ahmed@gmail.com',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF333333)),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      fillColor: Color(0xFFF2F2F2),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                    ),
                    validator: (val) {},
                    onSaved: (val) {},
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 30, 10, 10),
                child: Row(
                  children: [
                    Icon(Icons.lock),
                    SizedBox(width: 12),
                    Text(
                      'Change your password',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                      size: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
