import 'package:flutter/material.dart';

class EmojiButton extends StatelessWidget {
  const EmojiButton(
      {Key? key, required this.imagePath, required this.onPressed})
      : super(key: key);
  final String imagePath;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Image.asset('assets/icons/$imagePath'),
      ),
    );
  }
}
