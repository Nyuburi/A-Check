import 'package:a_check/pages/dashboard/home_page.dart';
import 'package:a_check/pages/dashboard/settings_page.dart';
import 'package:a_check/pages/dashboard/students_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int bottomNavbarSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(
      keepPage: true,
    );

    Widget buildPageView() {
      return PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [HomePage(), StudentsPage(), SettingsPage()]
      );
    }

    void bottomNavbarTapped(int index) {
      setState(() {
        bottomNavbarSelectedIndex = index;
        pageController.animateToPage(index,
            duration: const Duration(milliseconds: 400), curve: Curves.ease);
      });
    }

    List<BottomNavigationBarItem> bottomNavbarItems = const [
      BottomNavigationBarItem(icon: Icon(Icons.class_), label: "Classes",),
      BottomNavigationBarItem(icon: Icon(Icons.group), label: "Students"),
      BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings")
    ];

    return Scaffold( 
      body: SafeArea(child: buildPageView()),
      bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: bottomNavbarItems,
          currentIndex: bottomNavbarSelectedIndex,
          onTap: (index) {
            bottomNavbarTapped(index);
          }),
    );
  }
}
