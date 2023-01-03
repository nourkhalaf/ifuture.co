import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

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
          'Change Password',
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        backgroundColor: const Color(0xFF1B3944),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    'Old Password',
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
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      suffixIconColor: Color(0xFF828282),
                      hintText: 'Enter your old password',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF333333)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                    ),
                    validator: (val) {},
                    onSaved: (val) {},
                  ),
                  SizedBox(height: 16),
                  Text(
                    'New Password',
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
                      suffixIcon: Icon(Icons.visibility_off_outlined),
                      suffixIconColor: Color(0xFF828282),
                      filled: true,
                      hintText: 'Enter your new password',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF333333)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide.none),
                    ),
                    validator: (val) {},
                    onSaved: (val) {},
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
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
                      'Save new password',
                      style: TextStyle(
                          fontFamily: 'Poppins', fontSize: 16, height: 2),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
