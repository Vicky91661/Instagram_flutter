import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/heart/HeartScreen.dart';
import 'package:instagram_clone/screens/home/HomeScreen.dart';
import 'package:instagram_clone/screens/post/PostScreen.dart';
import 'package:instagram_clone/screens/profile/ProfileScreen.dart';
import 'package:instagram_clone/screens/search/SearchScreen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  List<Widget> Pages = [
    HomeScreen(),
    SearchScreen(),
    PostScreen(),
    HeartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade500,
        selectedLabelStyle: const TextStyle(color: Colors.white),
        unselectedLabelStyle: TextStyle(color:Colors.grey.shade500),

        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.plus_one),label: "Post"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.heart),label: "Heart"),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.profile_circled),label: "Profile"),

        ],
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: Pages,
      ),
    );
  }
}
