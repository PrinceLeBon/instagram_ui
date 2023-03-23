import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/account.dart';
import 'package:instagram_ui/pages/home.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';
import 'package:instagram_ui/pages/shop.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _Random() => Random().nextInt(100);
  late final int sms_number;
  late final List<Widget> _children = [
    UserHome(smsNumber: sms_number),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount()
  ];

  @override
  void initState() {
    super.initState();
    sms_number = _Random();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          items: [
            BottomNavigationBarItem(
                icon: (_selectedIndex == 0)
                    ? SizedBox(
                        height: 27,
                        child: Image.asset("assets/home.png"),
                      )
                    : SizedBox(
                        height: 27,
                        child: Image.asset("assets/home1.png"),
                      ),
                label: ''),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 1)
                    ? SizedBox(
                        height: 27,
                        child: Image.asset("assets/search.png"),
                      )
                    : SizedBox(
                        height: 27,
                        child: Image.asset("assets/search1.png"),
                      ),
                label: ''),
            BottomNavigationBarItem(
                icon: SizedBox(
                  height: 27,
                  child: Image.asset("assets/abb_box.png"),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 3)
                    ? SizedBox(
                        height: 27,
                        child: Image.asset("assets/reel.png"),
                      )
                    : SizedBox(
                        height: 27,
                        child: Image.asset("assets/reel1.png"),
                      ),
                label: ''),
            BottomNavigationBarItem(
                icon: (_selectedIndex == 4)
                    ? SizedBox(
                        height: 27,
                        child: Image.asset("assets/user.png"),
                      )
                    : SizedBox(
                        height: 27,
                        child: Image.asset("assets/user1.png"),
                      ),
                label: '')
          ]),
    );
  }
}
