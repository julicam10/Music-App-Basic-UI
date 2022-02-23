import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(500, 55),
        side: BorderSide(width: 1, color: color),
        primary: color,
        onPrimary: color,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(19),
        ),
        alignment: Alignment.center,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, 'singup_page'),
    );
  }
}
