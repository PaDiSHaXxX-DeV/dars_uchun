import 'package:dars_uchun/screen/Insta.dart';
import 'package:dars_uchun/screen/notification.dart';
import 'package:dars_uchun/screen/profile_page.dart';
import 'package:dars_uchun/screen/reels_page.dart';
import 'package:dars_uchun/screen/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  List<Widget>_pages=[instagram(),Search(),reels(),notification(),profile()];
  int current_page=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[current_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: current_page,
        onTap: (index) {
          setState(() {
            current_page=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.movie_filter_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ""),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "")
      ]),
    );
  }
}