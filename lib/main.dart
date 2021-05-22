import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/details_page.dart';
import '../pages/home_page.dart';

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
        appBarTheme: AppBarTheme(
            centerTitle: true,
            backgroundColor: Color(0xff212121),
            elevation: 0.0,
            actionsIconTheme: IconThemeData(
              color: Colors.white,
            )),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
        ),
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PageController _controller = PageController(
    initialPage: 0,
  );
  int _activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        onPageChanged: (newPage) => {
          setState(
            () => _activePage = newPage,
          ),
        },
        children: [
          HomePage(),
          DetailsPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _activePage,
        onTap: (newPage) => {
          setState(
            () => _activePage = newPage,
          ),
          _controller.animateToPage(
            _activePage,
            duration: Duration(
              milliseconds: 300,
            ),
            curve: Curves.linear,
          )
        },
        items: [
          BottomNavigationBarItem(
            label: "A",
            icon: FaIcon(
              FontAwesomeIcons.cookie,
            ),
          ),
          BottomNavigationBarItem(
            label: "A",
            icon: FaIcon(
              FontAwesomeIcons.cookie,
            ),
          ),
        ],
      ),
    );
  }
}
