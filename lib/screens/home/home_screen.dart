import 'package:flutter/material.dart';
import 'package:gamekrub/screens/account/account_screen.dart';
import 'package:gamekrub/screens/home/home_screen_body.dart';

import '../../widgets/customBottomBarItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  List pages = [
    HomeScreenBody(),
    Center(child: Text("Category")),
    Center(child: Text("Marketplace")),
    AccountScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar() {
    return Container(
      width: double.maxFinite,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(1, 1),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                isSelected: _selectedIndex == 0,
                icon: "assets/images/home.png",
              ),
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                isSelected: _selectedIndex == 1,
                icon: "assets/images/shopping-cart.png",
              ),
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                isSelected: _selectedIndex == 2,
                icon: "assets/images/heart.png",
              ),
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                isSelected: _selectedIndex == 3,
                icon: "assets/images/user.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
