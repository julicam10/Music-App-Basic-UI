import 'package:flutter/material.dart';

class RecentPlayWidget extends StatelessWidget {
  const RecentPlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) => Container(
          height: 150,
          width: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(left: 15, right: 15, top: 25),
            elevation: 4,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      color: Colors.red,
                    ),
                    const Text('Hello'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
