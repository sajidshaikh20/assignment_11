import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Groupbotton extends StatefulWidget {
  const Groupbotton({Key? key}) : super(key: key);

  @override
  _GroupbottonState createState() => _GroupbottonState();
}

class _GroupbottonState extends State<Groupbotton> {
  List<String> lst = [
    'Sajid',
    'harsh',
    'farhan',
    'Ildc',
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          title: Text(
            'Group button',
            style: TextStyle(fontSize: 20),
          ),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                customRadio(lst[0], 0),
                customRadio(lst[1], 1),
                customRadio(lst[2], 2),
                customRadio(lst[3], 3),
                SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ));
  }

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget customRadio(String txt, int index) {
    return ElevatedButton(
      onPressed: () => changeIndex(index),

      // color: selectedIndex == index ? Colors.black : Colors.grey,
      child: Text(
        txt,
        style: TextStyle(
            color: selectedIndex == index ? Colors.black : Colors.white),
      ),
    );
  }
}
