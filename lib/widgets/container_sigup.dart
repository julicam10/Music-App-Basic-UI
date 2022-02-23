import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/textform.dart';

class ContainerSignUp extends StatelessWidget {
  const ContainerSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: 380,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormLogin(
                hintText: 'Full name',
                icon: null,
                label: 'FULL NAME',
                obscureText: false,
                textInputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormLogin(
                hintText: 'Email adress',
                icon: null,
                label: 'EMAIL ADDRESS',
                obscureText: false,
                textInputType: TextInputType.emailAddress,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormLogin(
                hintText: 'Password',
                icon: null,
                label: 'PASSWORD',
                obscureText: true,
                textInputType: TextInputType.text,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFormLogin(
                hintText: 'Confirm password',
                icon: null,
                label: 'CONFIRM PASSWORD',
                obscureText: true,
                textInputType: TextInputType.text,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
