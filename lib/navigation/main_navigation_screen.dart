import 'package:flutter/material.dart';

import '../ui/calender_scren.dart';
import '../ui/home_screen.dart';
import '../ui/news_screen.dart';
import '../ui/study_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  @override
  _MainNavigationScreenState createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;
  String _title = '';

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsPage(),
    StudyPage(),
    CalendarPage(),
  ];

  initState() {
    _title = 'defult';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          elevation: 1,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: _title == 'default'
              ? Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              'Hai, Ichal Wira',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff020202),
                              ),
                            ),
                            Text(
                              '1301100310 - Teknik Komputer',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff9A9A9A),
                              ),
                            ),
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Color(0xff0073AC),
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage:
                              AssetImage('assets/images/Pas Fot.png'),
                        ),
                      ),
                    ],
                  ),
                )
              : Text(
                  _title,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff020202),
                  ),
                ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _selectedIndex,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          selectedItemColor: const Color(0xff0073AC),
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Berita",
              icon: Icon(Icons.explore),
            ),
            BottomNavigationBarItem(
              label: "Hasil Studi",
              icon: Icon(Icons.bar_chart),
            ),
            BottomNavigationBarItem(
              label: "Jadwal",
              icon: Icon(Icons.calendar_today),
            ),
          ],
        ),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          {
            _title = 'default';
          }
          break;
        case 1:
          {
            _title = 'Berita';
          }
          break;
        case 2:
          {
            _title = 'Hasil Studi';
          }
          break;
        case 3:
          {
            _title = 'Jadwal';
          }
          break;
      }
    });
  }
}
