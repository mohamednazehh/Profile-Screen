import 'package:flutter/material.dart';
import 'package:profilescreen/const.dart';
import 'package:profilescreen/profile_screen/profile_screen.dart';


class BaseScreen extends StatefulWidget {
  BaseScreen({Key? key}) : super(key: key);

  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _bottomAppBarIcon({required int index, required IconData icon, required String text}) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            navigateTo(index);
          },
          icon: Icon(
            icon,
            color: _selectedIndex == index ? Colors.orange : null,
          ),
          iconSize: 35,
        ),
        Text(
          "$text",
          style: TextStyle(
            fontSize: 10,
            color: _selectedIndex == index ? Colors.orange : null,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            height: 80,
            color: primaryColor,
            child: Material(
              type: MaterialType.transparency,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _bottomAppBarIcon(index: 2, icon: Icons.home_outlined, text: "Home"),
                  Spacer(),
                  _bottomAppBarIcon(index: 1, icon: Icons.density_medium_outlined, text: "Services"),
                  Spacer(),
                  _bottomAppBarIcon(index: 0, icon: Icons.person_outline_outlined, text: "Profile"),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: kCardGradient,
        ),
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            ProfileScreen(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
