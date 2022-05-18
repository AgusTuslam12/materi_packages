import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:materi_packages/pages/avatar%20glow.dart';
import 'package:materi_packages/pages/date.dart';
import 'package:materi_packages/pages/faker.dart';

class HomePages extends StatefulWidget {
  @override
  State<HomePages> createState() => _HomePagesState();
}

class _HomePagesState extends State<HomePages> {
  var faker = new Faker();

  int _page = 1;

  @override
  Widget build(BuildContext context) {
    List<Widget> widget = [
      Date(),
      Avatar(),
      PageFaker(),
    ];

    return Scaffold(
      body: widget[_page],
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          Icon(
            Icons.list,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.email_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.blueAccent,
        buttonBackgroundColor: Colors.amberAccent,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 700),
        height: 60,
        index: 1,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
