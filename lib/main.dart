import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reci_pies/pages/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          backgroundColor: Color(0xff323232),
          scaffoldBackgroundColor: Color(0xff212121),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                  displayColor: Colors.white,
                ),
          ),
        ),
        home: MainPage());
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: [
          HomePage(),
          Container(),
        ],
        items: [
          PersistentBottomNavBarItem(
            icon: Icon(
              Icons.access_alarms,
            ),
          ),
          PersistentBottomNavBarItem(
            icon: Icon(
              Icons.access_alarms,
            ),
          ),
        ],
        confineInSafeArea: true,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          adjustScreenBottomPaddingOnCurve: true,
          colorBehindNavBar: Colors.black,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style12,
      ),
    );
  }
}
