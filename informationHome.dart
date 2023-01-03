import 'package:flutter/material.dart';
import 'package:ifuture_co/widgets/circularPercentIndicatorItem.dart';
import 'package:percent_indicator/percent_indicator.dart';

class InformationHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Information',
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
          Container(
            color: Color(0xFFE9ECED),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 16),
            child: Row(
              children: [
                Text(
                  'Contact Information',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
                ),
                Spacer(),
                CircularPercentIndicatorItem('1/3', 0.3),
              ],
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Save address',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
                ),
                SizedBox(height: 6),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: 'Select your address',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF707070)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    onChanged: (value) {},
                    items: dropdownItems),
                SizedBox(height: 16),
                Text(
                  'Country',
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
                ),
                SizedBox(height: 6),
                DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: 'Select your Country',
                      hintStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF707070),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Color(0xFFF2F2F2),
                    ),
                    onChanged: (value) {},
                    items: dropdownItems),
                SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Name',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
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
                                hintText: 'First Name',
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
                    SizedBox(width: 9),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Last Name',
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
                                hintText: 'Last Name',
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
                SizedBox(height: 16),
                Text(
                  'Company (Optional)',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
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
                      hintText: 'Enter Your company',
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
                  'Address',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
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
                      hintText: 'Enter Your address',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF707070))),
                  validator: (val) {},
                  onSaved: (val) {},
                ),
                SizedBox(height: 16),
                Text(
                  'Apartment, suite , etc',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
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
                      hintText: 'Apartment, suite , etc',
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
                            'City',
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
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
                                hintText: 'City',
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
                    SizedBox(width: 9),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'State',
                            style: const TextStyle(
                                fontSize: 16,
                                fontFamily: 'Poppins',
                                color: Colors.black),
                          ),
                          SizedBox(height: 6),
                          DropdownButtonFormField(
                              decoration: InputDecoration(
                                hintText: 'State',
                                hintStyle: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    color: Color(0xFF707070)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(6),
                                  borderSide: BorderSide.none,
                                ),
                                filled: true,
                                fillColor: Color(0xFFF2F2F2),
                              ),
                              onChanged: (value) {},
                              items: dropdownItems),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'zip code',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
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
                      hintText: 'Enter your zip code',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF707070))),
                  validator: (val) {},
                  onSaved: (val) {},
                ),
                SizedBox(height: 16),
                Text(
                  'Phone number',
                  style: const TextStyle(
                      fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
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
                      hintText: 'Enter your phone number',
                      hintStyle: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 14,
                          color: Color(0xFF707070))),
                  validator: (val) {},
                  onSaved: (val) {},
                ),
                SizedBox(height: 38),
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
                      'Continue to Shipping',
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

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("USA"), value: "USA"),
      DropdownMenuItem(child: Text("Canada"), value: "Canada"),
      DropdownMenuItem(child: Text("Brazil"), value: "Brazil"),
      DropdownMenuItem(child: Text("England"), value: "England"),
    ];
    return menuItems;
  }
}
