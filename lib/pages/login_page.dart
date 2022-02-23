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
            IconLogo(size: 45),
            MainText(text: 'Hi there! Welcome back.'),
            FormFie1ldInput(hintText: 'Username, email or phone'),
          ],
        ),
      ),
    );
  }
}
