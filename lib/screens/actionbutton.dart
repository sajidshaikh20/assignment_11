import 'package:flutter/material.dart';

class Actionbutton extends StatelessWidget {
  const Actionbutton(
      {Key? key,
      required this.title,
      required this.icon,
      this.imagePath,
      required this.onPressed})
      : super(key: key);
  final String title;
  final IconData icon;
  final String? imagePath;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Row(
        children: [
          (imagePath != null)
              ? Image.asset(
                  'assets/icons/$imagePath',
                  width: 30,
                  height: 30,
                )
              : Icon(icon),
          SizedBox(
            width: 3,
          ),
          Text(title)
        ],
      ),
    );
  }
}
