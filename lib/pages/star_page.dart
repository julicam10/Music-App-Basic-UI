import 'package:flutter/material.dart';

import '../widgets/icon_logo.dart';
import '../widgets/login_signup_buttons.dart';
import '../widgets/main_text.dart';

class StarPage extends StatelessWidget {
  const StarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding:
            const EdgeInsets.only(left: 35, right: 35, top: 75, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            IconLogo(size: 65),
            NameApp(),
            MainText(text: 'Personalized Music Streaming in your Pocket'),
            BannerAds(),
            Buttons()
          ],
        ),
      ),
    );
  }
}

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 95),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          StarButtonLeft(text: 'Login'),
          StarButtonRigth(text: 'Signup'),
        ],
      ),
    );
  }
}

class BannerAds extends StatelessWidget {
  const BannerAds({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        'We stram music from Youtube to your device so you can listen continously, even when minimised.',
        style: TextStyle(
          color: Colors.black38,
          fontSize: 18,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}

class NameApp extends StatelessWidget {
  const NameApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        'MusicGU',
        style: TextStyle(
          color: Colors.blue.shade300,
          fontSize: 18,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
