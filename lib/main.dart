import 'package:cvv/pages/Parcours.page.dart';
import 'package:cvv/pages/portfolio.page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cvv/pages/competences.page.dart';
import 'package:cvv/pages/contact.page.dart';
import 'package:cvv/pages/home.page.dart';
import 'package:cvv/pages/bio.page.dart';
import 'package:cvv/pages/resume.page.dart';
import 'package:cvv/pages/experience.page.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = {
    '/home': (context) => HomePage(),
    '/contact': (context) => ContactPage(),
    '/parcoursAcademic': (context) => ParcoursPage(),
    '/bio': (context) => BioPage(),
    '/resume': (context) => ResumePage(),
    '/exp': (context) => ExperiencePage(),
    '/portfolio': (context) => Portfolio(),
    '/skill':(context) => SkillsPage(),
  };

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        return AdaptiveTheme(
          light: ThemeData.light(),
          dark: ThemeData.dark(),
          initial: snapshot.connectionState == ConnectionState.done
              ? _getSavedThemeMode(snapshot.data)
              : AdaptiveThemeMode.light, // Set initial theme based on saved data
          builder: (theme, darkTheme) => MaterialApp(
            debugShowCheckedModeBanner: false,
            home: HomePage(),
            routes: routes,
            theme: theme,
            darkTheme: darkTheme,
          ),
        );
      },
    );
  }

  // Helper function to get saved theme mode from SharedPreferences
  AdaptiveThemeMode _getSavedThemeMode(SharedPreferences? prefs) {
    if (prefs != null) {
      final isDarkMode = prefs.getBool('isDarkMode');
      if (isDarkMode != null) {
        return isDarkMode ? AdaptiveThemeMode.dark : AdaptiveThemeMode.light;
      }
    }
    return AdaptiveThemeMode.light;
  }
}
