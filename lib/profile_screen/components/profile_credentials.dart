import 'package:flutter/material.dart';


class ProfileCredentials extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(),
                  ),
                );
              },
              child: Material(
                  elevation: 10.0,
                  shadowColor: Colors.orange,
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: size.width,
                    height: size.width * 0.15,
                    child: Center(
                      child: Text(
                        'Edit profile information',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(),
                  ),
                );
              },
              child: Material(
                  elevation: 10.0,
                  shadowColor: Colors.orange,
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: size.width,
                    height: size.width * 0.15,
                    child: Center(
                      child: Text(
                        'Notification',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Container(),
                  ),
                );
              },
              child: Material(
                  elevation: 10.0,
                  shadowColor: Colors.orange,
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: size.width,
                    height: size.width * 0.15,
                    child: Center(
                      child: Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
