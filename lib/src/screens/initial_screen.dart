import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'dart:ui' as ui;

// screens
import './home_screen.dart';
import './news_screen.dart';
import './profile_screen.dart';
import './schedule_screen.dart';
import './settings_screen.dart';
    
// widgets
import '../widgets/bottom_floating_action_button.dart';
import '../widgets/blur_filter.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  static const routeName = 'home';

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  int _selectedIndex = 0;

  List<Widget> _routeOptions = <Widget>[
    HomeScreen(),
    ScheduleScreen(),
    NewsScreen(),
    ProfileScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _routeOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        height: 180,
        width: double.infinity,
        child: BlurFilter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: BottomFloatingActionButtonNotFull(
                        btnIcon: Icons.people,
                        btnText: 'Instructors',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: BottomFloatingActionButtonNotFull(
                        btnIcon: Icons.location_on_outlined,
                        btnText: 'About club',
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 40,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: BottomFloatingActionButton(
                  btnIcon: Icons.person_add_alt_1,
                  btnText: 'Log in',
                ),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(68, 68, 68, 1),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 10,
                            color: Colors.black.withOpacity(.33),
                          )
                        ],
                      ),
                      child: SafeArea(
                        child: GNav(
                          tabBorderRadius: 15,
                          gap: 8,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          tabMargin: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 8),
                          activeColor: Colors.white,
                          iconSize: 26,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 4, vertical: 14),
                          duration: const Duration(milliseconds: 400),
                          tabBackgroundColor: Colors.redAccent.shade700,
                          color: Colors.white,
                          tabs: const [
                            GButton(
                              icon: Icons.home_rounded,
                              text: 'Home',
                            ),
                            GButton(
                              icon: Icons.receipt,
                              text: 'Schedule',
                            ),
                            GButton(
                              icon: Icons.newspaper,
                              text: 'News',
                            ),
                            GButton(
                              icon: Icons.person,
                              text: 'Profile',
                            ),
                            GButton(
                              icon: Icons.settings,
                              text: 'Settings',
                            ),
                          ],
                          selectedIndex: _selectedIndex,
                          onTabChange: (index) {
                            setState(() {
                              _selectedIndex = index;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
