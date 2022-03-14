import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/DashBoard/Home.dart';
import 'package:flutter_auth/Screens/DashBoard/Post.dart';
import 'package:flutter_auth/Screens/DashBoard/Profile.dart';
import 'package:flutter_auth/Screens/DashBoard/Model_Sheet_Donate.dart';

class DashB extends StatefulWidget {
  const DashB({
    Key key}) : super(key: key);
  @override
  _DashBState createState() => _DashBState();
}
class _DashBState extends State<DashB> {
  ModelDonate model = new ModelDonate();
  int currentIndex = 0;
  final screens = [
    Home(),
    Post(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: IndexedStack(
          index: currentIndex,
          children: screens,
        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap:
            (index) => setState(() => currentIndex = index),
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.amber,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.white,
          selectedFontSize: 17,
          unselectedFontSize: 14,
          iconSize:  20,

        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Post",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ) ,
    );
  }
/*
  elec
  go lang
  graph q lang
tiger sql
  */


