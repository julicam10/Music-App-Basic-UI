import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  const MainText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 42,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
