import 'package:flutter/material.dart';
import 'package:flutter_hyper_ui/core.dart';

class BasicMainNavigationView extends StatefulWidget {
  const BasicMainNavigationView({Key? key}) : super(key: key);

  @override
  State<BasicMainNavigationView> createState() =>
      _BasicMainNavigationViewState();
}

class _BasicMainNavigationViewState extends State<BasicMainNavigationView> {
  int _currentIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w500);
  final List<Widget> _children = [
    const DashboardView(),
    const Text(
      "Messages",
      style: optionStyle,
    ),
    const Text(
      "Profi",
      style: optionStyle,
    ),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _children[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        showUnselectedLabels: true,
        selectedItemColor: const Color.fromARGB(255, 227, 143, 17),
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.touch_app),
            label: 'Absensi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.transfer_within_a_station),
            label: 'Aktivitas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_help),
            label: 'Problem',
          ),
        ],
      ),
    );
  }
}
