import 'package:cashback/cashback/cashback.dart';
import 'package:cashback/profile/myAccount.dart';
import 'package:flutter/material.dart';
import 'dashboard/dashboard.dart';
import 'fund/fund_account.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final screens = [
    const Dashboard(),
    const Cashback(),
    const Fund(),
    const MyAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF080f2e),
        selectedFontSize: 17,
        unselectedFontSize: 15,
        selectedIconTheme: const IconThemeData(
          size: 25,
        ),
        unselectedIconTheme: const IconThemeData(
          size: 20,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.houseChimney,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.gifts),
            label: 'Cashback',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.moneyBills,
            ),
            label: 'Top-Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.circleUser),
            label: 'Account',
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: screens[_currentIndex],
    );
  }
}
