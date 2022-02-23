import 'package:flutter/material.dart';

class StarButtonLeft extends StatelessWidget {
  const StarButtonLeft({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 45),
        side: const BorderSide(width: 1, color: Colors.black26),
        primary: Colors.white,
        onPrimary: Colors.black,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        alignment: Alignment.center,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, 'login_page'),
    );
  }
}

class StarButtonRigth extends StatelessWidget {
  const StarButtonRigth({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(150, 45),
        side: const BorderSide(width: 1, color: Colors.black26),
        primary: Colors.white,
        onPrimary: Colors.black,
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        alignment: Alignment.center,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 15,
        ),
      ),
      onPressed: () => Navigator.pushNamed(context, 'singup_page'),
    );
  }
}
