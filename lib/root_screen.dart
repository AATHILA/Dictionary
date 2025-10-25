import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nigandu/screens/history_screen.dart';
import 'package:nigandu/screens/saved_words.dart';

import 'custom_widgets/language_toggle_button.dart';
import 'home_screen.dart';
import 'main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isEnToMl = true;
  List<String> words = ["book", "water", "friend", "house", "car", "apple"];
int _selectedIndex=0;

  static const List<Widget> _pages = <Widget>[
     HomeScreen(),
    SavedWords(),
    SearchHistory(),
    Center(child: Text('Settings', style: TextStyle(fontSize: 24))),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

bottomNavigationBar:
      BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/btm_nvgtn/fireplace-home-svgrepo-com.svg",width: width*0.07),label: 'Home'),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/btm_nvgtn/library-book-svgrepo-com.svg",width: width*0.07),label: 'Saved'),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/btm_nvgtn/history-svgrepo-com.svg",width: width*0.07),label: 'History'),
        BottomNavigationBarItem(icon: SvgPicture.asset("assets/btm_nvgtn/settings-gear-svgrepo-com.svg",width: width*0.07),label: 'Settings'),
      ],
      currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
