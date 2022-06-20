import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:snake_detection/faq.dart';
import 'package:snake_detection/icons.dart';
import 'package:snake_detection/scan.dart';
import 'package:snake_detection/search.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print(e.code);
  }
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

  static const List<Widget> _widgetOptions = <Widget>[Search(), Scan(), FAQ()];

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
        body: _widgetOptions.elementAt(_selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(CustomIcons.scan), label: 'Scan'),
            BottomNavigationBarItem(icon: Icon(CustomIcons.faq), label: 'FAQ'),
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
