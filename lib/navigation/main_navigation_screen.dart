import 'package:flutter_academy_apps/ui/lib_screen.dart';

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
    _title = 'default';
    _title = 'Jadwal';
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
            leadingWidth: 0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: _title == 'default'
                ? Container(
                    // color: Colors.amber,
                    width: MediaQuery.of(context).size.width,
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
                                'Hai, Ichal Wira. S',
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
                        Container(
                          width: 58,
                          height: 58,
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1.5,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          child: Image.asset('assets/images/Pas Fot.png'),
                        ),
                      ],
                    ),
                  )
                : _title == 'Jadwal'
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _title,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff020202),
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  child: Material(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                      onTap: () {},
                                      child: Container(
                                        // margin: EdgeInsets.all(5),
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).primaryColor,
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(15),
                                          ),
                                        ),
                                        child: Center(
                                          child: Stack(
                                            children: [
                                              Icon(
                                                Icons.notifications,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              true
                                                  ? Positioned(
                                                      top: 5,
                                                      left: 18,
                                                      child: Container(
                                                        padding:
                                                            EdgeInsets.all(1),
                                                        decoration:
                                                            BoxDecoration(
                                                                color:
                                                                    Colors.red,
                                                                shape: BoxShape
                                                                    .circle),
                                                        constraints:
                                                            BoxConstraints(
                                                          minHeight: 8,
                                                          minWidth: 8,
                                                        ),
                                                      ),
                                                    )
                                                  : Text(''),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Notifikasi',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    : Text(
                        _title,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff020202),
                        ),
                      )
            // Text(
            //     _title,
            //     maxLines: 1,
            //     style: TextStyle(
            //       fontSize: 20,
            //       fontWeight: FontWeight.bold,
            //       color: Color(0xff020202),
            //     ),
            //   ),
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
          selectedItemColor: primaryColor,
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
