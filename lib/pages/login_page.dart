import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/main_text.dart';

import '../widgets/icon_logo.dart';
import '../widgets/textform.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            const EdgeInsets.only(left: 35, right: 35, top: 75, bottom: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: IconLogo(size: 45),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: MainText(text: 'Hi there! Welcome back.'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: ContainerTextFrom(),
            )
          ],
        ),
      ),
    );
  }
}
