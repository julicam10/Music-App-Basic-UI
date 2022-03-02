import 'package:flutter/material.dart';

class RecentPlayWidget extends StatelessWidget {
  const RecentPlayWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        height: 130,
        width: 130,
        color: Colors.red,
      ),
    );
  }
}
