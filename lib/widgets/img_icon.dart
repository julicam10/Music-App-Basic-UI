import 'package:flutter/material.dart';

class ImageIconSignUp extends StatelessWidget {
  const ImageIconSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 70,
      child: CircleAvatar(
        backgroundImage: const AssetImage('assets/img/user.png'),
        child: Stack(
          alignment: Alignment.bottomRight,
          fit: StackFit.expand,
          children: const [Icon(Icons.add_a_photo, size: 15)],
        ),
      ),
    );
  }
}
