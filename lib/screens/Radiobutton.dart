import 'package:flutter/material.dart';

class Myradio extends StatefulWidget {
  const Myradio({Key? key}) : super(key: key);

  @override
  _MyradioState createState() => _MyradioState();
}

class _MyradioState extends State<Myradio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio button'),
        centerTitle: true,
      ),
    );
  }
}
