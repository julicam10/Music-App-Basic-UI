import 'package:flutter/material.dart';

class ContainerTextFrom extends StatelessWidget {
  const ContainerTextFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormLogin(
                hintText: 'Username, email or phone',
                label: 'Username, email or phone',
                icon: Icon(Icons.people_alt_rounded),
                textInputType: TextInputType.emailAddress,
                obscureText: false,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormLogin(
                hintText: 'Password',
                label: 'Password',
                icon: Icon(Icons.password_rounded),
                textInputType: TextInputType.visiblePassword,
                obscureText: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFormLogin extends StatelessWidget {
  const TextFormLogin({
    Key? key,
    required this.hintText,
    required this.label,
    this.icon,
    required this.textInputType,
    required this.obscureText,
  }) : super(key: key);

  final String hintText;
  final String label;
  final Icon? icon;
  final TextInputType textInputType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: textInputType,
      decoration: InputDecoration(
        icon: icon,
        hintText: hintText,
        label: Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
