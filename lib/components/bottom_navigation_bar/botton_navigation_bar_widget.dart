import 'package:e_commerce/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedTab = 0;

  void onSelectedTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          MainScreen(),
          Text(
            'Favourite',
          ),
          Text(
            'Personal',
          ),
          Text(
            'Новости',
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        unselectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'MainScreen',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Personal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Новости',
          ),
        ],
        //selectedItemColor: Colors.amber[800],
        onTap: onSelectedTab,
      ),
    );
  }
}
