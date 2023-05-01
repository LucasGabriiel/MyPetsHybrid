import 'package:flutter/material.dart';
import 'package:my_pets/scenes/home.dart';
import 'package:my_pets/scenes/settings.dart';
import 'package:my_pets/scenes/splash.dart';
import 'package:my_pets/themes/my_pets_themes.dart';
import 'package:flutter/cupertino.dart';


final globalNavigatorKey = GlobalKey<NavigatorState>();

class MyPetsApp extends StatelessWidget {
  const MyPetsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Pets',
      navigatorKey: globalNavigatorKey,
      theme: MyPetThemes.brightTheme,
      darkTheme: MyPetThemes.darkTheme,
      themeMode: ThemeMode.system, 
      /* ThemeMode.system to follow system theme, 
         ThemeMode.light for light theme, 
         ThemeMode.dark for dark theme
      */
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash" : (context) => const SplashPage(),
        "/home" : (context) => const MyPetsTabContainer()
      },
    );
  }
}
class MyPetsTabContainer extends StatefulWidget {
  const MyPetsTabContainer({super.key});

  @override
  State<MyPetsTabContainer> createState() => _MyPetsTabContainer();
}

class _MyPetsTabContainer extends State<MyPetsTabContainer> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Settings(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.paw),
            label: 'Pets',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}