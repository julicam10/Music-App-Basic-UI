import 'package:flutter/material.dart';

class RecentPlayWidget extends StatelessWidget {
  const RecentPlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, posicion) {
        return Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              height: 130,
              width: 130,
              color: Colors.red,
            ),
          ),
        );
      },
    );
    // return ListView(
    //   scrollDirection: Axis.vertical,
    //   children: [
    //     Container(
    //       height: 130,
    //       width: 130,
    //       color: Colors.red,
    //     ),
    //   ],
    // );
  }
}
