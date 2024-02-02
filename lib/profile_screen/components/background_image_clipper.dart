import 'package:flutter/material.dart';

import 'curve_clipper.dart';

class BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return ClipPath(
      clipper: CurveClipper(),
      child: Container(
        height: size.height * 0.55,
        color: Colors.orange,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 60),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                    backgroundImage: AssetImage('assets/mamdoh.png'),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Abdelrahman Mamdouh",
                  style: TextStyle(
                  fontSize: 20,
                    color: Colors.white
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
