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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, bottom: 20),
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
                      color: Colors.pinkAccent,
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
                padding: EdgeInsets.only(top: 30, bottom: 20),
                child: Text(
                  'RECOMMENDED',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                height: 320,
                child: GridView.count(
                  scrollDirection: Axis.horizontal,
                  crossAxisCount: 3,
                  mainAxisSpacing: 80,
                  childAspectRatio: 0.6,
                  children: const [
                    ListTileHomeScreen(
                      icon: Icons.abc_outlined,
                      title: 'ABC',
                      subtitle: 'First Album',
                      color: Colors.red,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.ac_unit_outlined,
                      title: 'Ice',
                      subtitle: 'First Album',
                      color: Colors.grey,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.access_alarms,
                      title: 'Clock',
                      subtitle: 'First Album',
                      color: Colors.lime,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.accessibility_new,
                      title: 'Deep purple',
                      subtitle: 'First Album',
                      color: Colors.pink,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.add_alert_rounded,
                      title: 'Alert',
                      subtitle: 'Second Album',
                      color: Colors.green,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.add_ic_call,
                      title: 'Call me',
                      subtitle: 'Second Album',
                      color: Colors.purple,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.mark_as_unread_outlined,
                      title: 'Mail',
                      subtitle: 'Second Album',
                      color: Colors.deepOrange,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.sports_cricket,
                      title: 'Sport',
                      subtitle: 'Second Album',
                      color: Colors.yellowAccent,
                    ),
                    ListTileHomeScreen(
                      icon: Icons.restore_page,
                      title: 'Change me',
                      subtitle: 'Second Album',
                      color: Colors.pink,
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      blurRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[300],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.pedal_bike_rounded,
                          size: 20,
                        ),
                      ),
                      trailing: Icon(
                        Icons.play_arrow_rounded,
                        size: 50,
                      ),
                      title: Text('My own bike'),
                      subtitle: Text('Street in town'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListTileHomeScreen extends StatelessWidget {
  const ListTileHomeScreen({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.color,
  }) : super(key: key);

  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(
          icon,
          size: 20,
        ),
      ),
      title: Text(title),
      subtitle: Text(subtitle),
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
