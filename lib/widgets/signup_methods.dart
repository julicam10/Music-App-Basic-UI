import 'package:flutter/material.dart';

class SignupMethods extends StatelessWidget {
  const SignupMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(color: Colors.white, fontSize: 20);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Or with social: ',
          style: style,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: CircleAvatar(
              backgroundColor: Colors.blueGrey.shade900,
              child: GestureDetector(
                onDoubleTap: () {},
                child: const Text(
                  'f',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: CircleAvatar(
              backgroundColor: Colors.grey[800],
              child: GestureDetector(
                onLongPress: () {},
                child: const Text(
                  'G+',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )),
        ),
      ],
    );
  }
}
