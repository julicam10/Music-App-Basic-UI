import 'package:flutter/material.dart';
import 'package:music_app_ui/pages/login_page.dart';
import 'package:music_app_ui/pages/singup_page.dart';
import 'package:music_app_ui/pages/star_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music App Ui',
      initialRoute: 'star_page',
      routes: {
        'star_page': (_) => const StarPage(),
        'login_page': (_) => const LoginPage(),
        'singup_page': (_) => const SingUpPage(),
      },
    );
  }
}
