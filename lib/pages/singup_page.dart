import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/buttons_login.dart';
import 'package:music_app_ui/widgets/container_sigup.dart';
import 'package:music_app_ui/widgets/signup_methods.dart';

import '../widgets/img_icon.dart';

class SingUpPage extends StatelessWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('SIGN UP'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 25, bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ImageIconSignUp(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ContainerSignUp(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Buttons(
                  text: 'Sign up with email',
                  color: Colors.blue,
                  navigatorRoute: '',
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: SignupMethods(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
