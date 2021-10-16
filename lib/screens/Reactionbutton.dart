import 'package:assignment_11/screens/reactioncard.dart';
import 'package:flutter/material.dart';

class ReactionButton extends StatefulWidget {
  const ReactionButton({Key? key}) : super(key: key);

  @override
  _ReactionButtonState createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reaction button'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 30,
          itemBuilder: (BuildContext context, int) {
            return Mycard();
          }),
    );
  }
}
