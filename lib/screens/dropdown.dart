import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DropMenu extends StatefulWidget {
  const DropMenu({Key? key}) : super(key: key);

  @override
  _DropMenuState createState() => _DropMenuState();
}

class _DropMenuState extends State<DropMenu> {
  var _itemList = ['sajid', 'Farhan', 'Naman sir', 'Bhagav sir'];
  var currentSelected = 'sajid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Dropdown Menu',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'drop down selection',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration.collapsed(hintText: ''),
              dropdownColor: Colors.white,
              isExpanded: true,
              isDense: true,
              // autofocus: true,
              items: _itemList.map(
                (String dropDownStingItem) {
                  return DropdownMenuItem(
                    child: Text(dropDownStingItem),
                    value: dropDownStingItem,
                  );
                },
              ).toList(),
              onChanged: (newValueSelected) {
                dropDownItemSelected(newValueSelected!);
              },
              value: currentSelected,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          // Padding(
          //   padding:
          //       const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
          //   child: DropdownButtonFormField<String>(
          //     dropdownColor: Color(0xffd7bfbf),
          //     isExpanded: true,
          //     isDense: true,
          //     autofocus: true,
          //     items: _itemList.map(
          //       (String dropDownStingItem) {
          //         return DropdownMenuItem(
          //           child: Text(dropDownStingItem),
          //           value: dropDownStingItem,
          //         );
          //       },
          //     ).toList(),
          //     onChanged: (newValueSelected) {
          //       dropDownItemSelected(newValueSelected!);
          //     },
          //     value: currentSelected,
          //   ),
          // ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }

  void dropDownItemSelected(newValueSelected) {
    setState(() {
      this.currentSelected = newValueSelected!;
    });
  }
}
