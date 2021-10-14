import 'package:flutter/material.dart';

class Myfabmenu extends StatefulWidget {
  const Myfabmenu({Key? key}) : super(key: key);

  @override
  _MyfabmenuState createState() => _MyfabmenuState();
}

Widget float1() {
  return Container(
    child: FloatingActionButton(
      onPressed: null,
      tooltip: 'First button',
      child: Icon(Icons.add),
    ),
  );
}

Widget float2() {
  return Container(
    child: FloatingActionButton(
      onPressed: null,
      tooltip: 'Second button',
      child: Icon(Icons.add),
    ),
  );
}

class _MyfabmenuState extends State<Myfabmenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
