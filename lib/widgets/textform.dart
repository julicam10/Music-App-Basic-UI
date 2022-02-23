import 'package:flutter/material.dart';

class FormFie1ldInput extends StatelessWidget {
  const FormFie1ldInput({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Column(
        children: const [
          TextField(
            autofocus: false, // TO DO: Cambiar a true
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              hintText: 'Username, email or phone',
              hintStyle: TextStyle(color: Colors.black26),
              // border: OutlineInputBorder(
              //   borderSide: BorderSide(
              //     color: Colors.blue,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
