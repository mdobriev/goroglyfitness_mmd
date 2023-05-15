import 'package:flutter/material.dart';

import './constants/themes/theme_data.dart';

// Screens
import './screens/home_screen.dart';
import './screens/initial_screen.dart';
import './screens/news_screen.dart';
import './screens/schedule_screen.dart';
import './screens/settings_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appLightThemeData,
      darkTheme: appDarkThemeData,
      themeMode: ThemeMode.light,

      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      // darkTheme: darkThemeData(context),
      routes: {
        '/': (context) => InitialScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        ScheduleScreen.routeName: (context) => ScheduleScreen(),
        NewsScreen.routeName: (context) => NewsScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
      },
    );
  }
}
