import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/main_text.dart';

import '../widgets/buttons_login.dart';
import '../widgets/icon_logo.dart';
import '../widgets/textform.dart';
import '../widgets/texts_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: IconLogo(size: 45),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: MainText(text: 'Hi there! Welcome back.'),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 5, left: 25),
                child: ContainerTextFrom(),
              ),
              Padding(
                padding: EdgeInsets.only(left: 300),
                child: Text(
                  'FORGOT?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Buttons(
                  text: 'Login',
                  color: Colors.blue,
                  navigatorRoute: 'home_page',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Buttons(
                  text: 'Create a new account',
                  color: Colors.black,
                  navigatorRoute: 'singup_page',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 40, bottom: 5),
                child: TextsLogins(
                  text: 'Facebook login',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 35),
                child: TextsLogins(
                  text: 'Google login',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
