import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gamekrub/screens/account/account_screen.dart';
import 'package:gamekrub/screens/home/home_screen_body.dart';
import 'package:gamekrub/utils/dimension.dart';

import '../../widgets/bottomNavBar/customBottomBarItems.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List _pages = [
    SafeArea(child: HomeScreenBody()),
    Center(child: Text("Category")),
    Center(child: Text("Marketplace")),
    AccountScreen(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pages[_selectedIndex],
      bottomNavigationBar: _buildBottomBar()
    );
  }

  Widget _buildBottomBar() {
    return SafeArea(
      child: SizedBox(
        width: double.maxFinite,
        height: 50,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: [
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
                isSelected: _selectedIndex == 0,
                icon: FontAwesomeIcons.house,
              ),
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                },
                isSelected: _selectedIndex == 1,
                icon: FontAwesomeIcons.cartShopping,
              ),
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                isSelected: _selectedIndex == 2,
                icon: FontAwesomeIcons.solidHeart,
              ),
              mBottomBarItem(
                press: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                },
                isSelected: _selectedIndex == 3,
                icon: FontAwesomeIcons.solidUser,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
