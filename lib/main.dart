import 'package:flutter/material.dart';
// import 'material_design_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Snake Detector',
      home: HomeBar(),
    );
  }
}

class HomeBar extends StatefulWidget {
  const HomeBar({Key? key}) : super(key: key);

  @override
  State<HomeBar> createState() => _HomeBarState();
}

class _HomeBarState extends State<HomeBar> {
  int _selectedIndex = 1;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Scan',
      style: optionStyle,
    ),
    Text(
      'Info',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          elevation: 0,
          title: const Text(
            'Snake Detector',
            style: TextStyle(
              color: Color(0xFF2E5043),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.flip), label: 'Scan'),
            BottomNavigationBarItem(
                icon: Icon(Icons.info_outline), label: 'FAQ'),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFF2E5043),
          selectedIconTheme: const IconThemeData(size: 30),
          onTap: _onItemTapped,
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        ));
  }
}
