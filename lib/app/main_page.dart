import 'package:flutter/material.dart';
import 'package:testing_1/app/sign_in_page.dart';
import 'package:testing_1/app/portofolio.dart';
import 'package:testing_1/app/favorite_page.dart';
import 'package:testing_1/app/profile_page.dart';

class mainPage extends StatefulWidget {
  // const mainPage({ Key? key }) : super(key: key);

  @override
  _mainPageState createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int _selectedIndex = 0;
  final navbarButtonColor = Color(0xFF0C55ED);
  final navbarButtonColorDefault = Colors.black;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Align(
      //     alignment: Alignment(0, 0),
      //     child: Text(
      //       "Time Tracker",
      //     ),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF252934),
        // fixedColor: Colors.red,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _selectedIndex == 0
                  ? navbarButtonColor
                  : navbarButtonColorDefault,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.assessment_rounded,
              color: _selectedIndex == 1
                  ? navbarButtonColor
                  : navbarButtonColorDefault,
            ),
            label: 'Portofolio',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: _selectedIndex == 2
                  ? navbarButtonColor
                  : navbarButtonColorDefault,
            ),
            label: 'Favorite',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_rounded,
              color: _selectedIndex == 3
                  ? navbarButtonColor
                  : navbarButtonColorDefault,
            ),
            label: "Profile",
            //  backgroundColor: Colors.red,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: Stack(
        children: [
          _buildOffstageNavigator(0),
          _buildOffstageNavigator(1),
          _buildOffstageNavigator(2),
          _buildOffstageNavigator(3),
        ],
      ),
    );
  }

  // void _next() {
  //   Navigator.push(context, MaterialPageRoute(builder: (context) => Screen2()));
  // }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          SigninPage(),
          Portofolio(),
          favoritePage(),
          profilePage(),
          // CalendarPage(
          //   onNext: _next,
          // ),
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    var routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
