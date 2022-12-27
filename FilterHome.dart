import 'package:flutter/material.dart';

class FilterHome extends StatefulWidget {
  @override
  State<FilterHome> createState() => _FilterHomeState();
}

class _FilterHomeState extends State<FilterHome> {
  bool? product_type1 = false;
  bool? product_type2 = false;
  bool? product_type3 = false;
  bool? product_type4 = false;
  bool? product_type5 = false;
  bool? product_type6 = false;
  bool? product_type7 = false;

  bool? all = false;
  bool? in_stock = false;

  bool? count1 = false;
  bool? count2 = false;
  bool? count3 = false;
  bool? count4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Filter',
          style: TextStyle(fontFamily: 'Poppins', fontSize: 18),
        ),
        actions: [
          Container(
            width: 24,
            height: 24,
            decoration:
                BoxDecoration(color: Color(0xFF425B64), shape: BoxShape.circle),
            //padding: const EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 11),
            child: GestureDetector(
                child: const Icon(
                  Icons.close,
                  size: 15,
                ),
                onTap: () {}),
          ),
        ],
        backgroundColor: const Color(0xFF1B3944),
      ),
      body: Container(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExpansionTileItem('Product type', productTypes()),
              ExpansionTileItem('Stock', stock()),
              ExpansionTileItem('Product rating count', count()),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
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
                          'Apply',
                          style: TextStyle(
                              fontFamily: 'Poppins', fontSize: 16, height: 2),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 13),
                        decoration: BoxDecoration(
                          color: Color(0xFFE9ECED),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Icon(
                          Icons.refresh,
                          size: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ExpansionTile ExpansionTileItem(String title, List<Widget> options) {
    return ExpansionTile(
      iconColor: Colors.black,
      collapsedIconColor: Colors.black,
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontFamily: 'Poppins', color: Colors.black),
      ),
      subtitle: Text(
        title,
        style: const TextStyle(
            fontSize: 16, fontFamily: 'Poppins', color: Color(0xFF555555)),
      ),
      children: options,
    );
  }

  List<Widget> productTypes() {
    return [
      checkboxItem(
          'Dinnerware Kitchen Dinnerware ', 'product_type1', product_type1!),
      checkboxItem('Electric Milk Frother', 'product_type2', product_type2!),
      checkboxItem('Heating Kitchen Hot', 'product_type3', product_type3!),
      checkboxItem('Kitchen Accessories', 'product_type4', product_type4!),
      checkboxItem('Kitchen Appliances', 'product_type5', product_type5!),
      checkboxItem('Kitchen Container', 'product_type6', product_type6!),
      checkboxItem('Kitchen Tools', 'product_type7', product_type7!),
    ];
  }

  List<Widget> stock() {
    return [
      checkboxItem('All', 'all', all!),
      checkboxItem('In Stock', 'in_stock', in_stock!),
    ];
  }

  List<Widget> count() {
    return [
      checkboxItem('683', 'count1', count1!),
      checkboxItem('232', 'count2', count2!),
      checkboxItem('122', 'count3', count3!),
      checkboxItem('243', 'count1', count4!),
    ];
  }

  Widget checkboxItem(String title, String type, val) {
    /*return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Color(0xFFFFB434),
      title: Text(
        title,
        style: TextStyle(fontSize: 16, fontFamily: 'Poppins'),
      ),
      value: val,
      selected: val,
      onChanged: (value) {
        setState(() {
          if (type == 'product_type1')
            product_type1 = value!;
          else if (type == 'product_type2')
            product_type2 = value!;
          else if (type == 'product_type3')
            product_type3 = value!;
          else if (type == 'product_type4')
            product_type4 = value!;
          else if (type == 'product_type5')
            product_type5 = value!;
          else if (type == 'product_type6')
            product_type6 = value!;
          else if (type == 'product_type7')
            product_type7 = value!;
          else if (type == 'all')
            all = value!;
          else if (type == 'in_stock')
            in_stock = value!;
          else if (type == 'count1')
            count1 = value!;
          else if (type == 'count2')
            count2 = value!;
          else if (type == 'count3')
            count3 = value!;
          else if (type == 'count4') count4 = value!;
        });
      },
    );*/

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Checkbox(
            value: val,
            onChanged: (value) {
              setState(() {
                if (type == 'product_type1')
                  product_type1 = value!;
                else if (type == 'product_type2')
                  product_type2 = value!;
                else if (type == 'product_type3')
                  product_type3 = value!;
                else if (type == 'product_type4')
                  product_type4 = value!;
                else if (type == 'product_type5')
                  product_type5 = value!;
                else if (type == 'product_type6')
                  product_type6 = value!;
                else if (type == 'product_type7')
                  product_type7 = value!;
                else if (type == 'all')
                  all = value!;
                else if (type == 'in_stock')
                  in_stock = value!;
                else if (type == 'count1')
                  count1 = value!;
                else if (type == 'count2')
                  count2 = value!;
                else if (type == 'count3')
                  count3 = value!;
                else if (type == 'count4') count4 = value!;
              });
            },
            activeColor: Color(0xFFFFB434),
          ),
          SizedBox(width: 4),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Poppins',
              color: val ? Color(0xFFFFB434) : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
