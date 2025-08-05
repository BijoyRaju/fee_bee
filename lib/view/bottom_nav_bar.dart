import 'package:fee_bee/view/branches.dart';
import 'package:fee_bee/view/home.dart';
import 'package:fee_bee/view/profile.dart';
import 'package:fee_bee/view/student_list.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  int _selectedIndex = 0;
  final List<Widget> pages = const [
    Home(),
    StudentList(),
    Branches(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "Student List"),
          BottomNavigationBarItem(icon: Icon(Icons.broadcast_on_home),label: "Person"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile")
        ],
      ),
    );
  }
}
