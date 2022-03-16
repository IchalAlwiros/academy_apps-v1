import 'package:flutter_academy_apps/ui/lib_screen.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isVisible = true;

  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/home',
        (route) => isVisible,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
        duration: Duration(seconds: 5),
        child: isVisible
            ? Scaffold(
                backgroundColor: Colors.amber,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset(
                      //   'assets/Logo.png',
                      //   width: 100,
                      //   height: 100,
                      // ),
                      Text(
                        'ACADEMIC',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox());
  }
}
