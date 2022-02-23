import 'package:flutter/material.dart';

class IconLogo extends StatelessWidget {
  const IconLogo({
    Key? key,
    required this.size,
  }) : super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Icon(
        Icons.music_video_outlined,
        size: size,
        color: Colors.deepPurpleAccent.shade400,
      ),
    );
  }
}
