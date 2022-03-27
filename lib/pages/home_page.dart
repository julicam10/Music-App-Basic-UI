import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 10),
                child: Text(
                  'Recent played',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    Card(
                      color: Colors.lightBlue,
                      name: 'Sky blue',
                      artist: 'The rollers',
                      icon: Icons.safety_divider,
                    ),
                    SizedBox(width: 12),
                    Card(
                      color: Colors.deepPurple,
                      name: 'Deep purple',
                      artist: 'The deeps',
                      icon: Icons.accessibility_new_rounded,
                    ),
                    SizedBox(width: 12),
                    Card(
                      color: Colors.lightGreen,
                      name: 'Greens',
                      artist: 'The Greens',
                      icon: Icons.adb,
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 0),
                child: Text(
                  'RECOMMENDED',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    Key? key,
    required this.color,
    required this.name,
    required this.artist,
    required this.icon,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String name;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(
            icon,
            size: 90,
          ),
          Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Text(
            artist,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 7),
        ],
      ),
    );
  }
}
