import 'package:flutter/material.dart';
import 'package:profilescreen/profile_screen/components/background_image_clipper.dart';
import 'package:profilescreen/profile_screen/components/profile_credentials.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() => ProfileScreenState();
}

class ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackgroundImage(),
                ProfileCredentials(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
