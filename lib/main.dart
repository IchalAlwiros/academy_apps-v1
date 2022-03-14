import 'package:flutter/material.dart';
import 'package:flutter_academy_apps/navigation/main_navigation_screen.dart';

void main() => runApp(const AcademyApps());

class AcademyApps extends StatelessWidget {
  const AcademyApps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Academy Apps',
      debugShowCheckedModeBanner: false,
      home: MainNavigationScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xff0073AC),
      ),
    );
  }
}
