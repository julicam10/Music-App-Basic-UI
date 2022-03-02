import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/recent_played.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                color: Colors.purple,
                iconSize: 40,
                icon: const Icon(Icons.music_video_rounded),
                onPressed: () {},
              );
            },
          ),
          title: const Text(
            'HOME',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text(
                  'Recent played',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RecentPlayWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
