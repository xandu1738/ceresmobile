import 'package:ceresmobile/ui/dashboard.dart';
import 'package:ceresmobile/ui/employees.dart';
import 'package:ceresmobile/ui/settings.dart';
import 'package:ceresmobile/ui/widgets/charts.dart';
import 'package:ceresmobile/ui/widgets/receipts.dart';
import 'package:flutter/material.dart';
import 'dashbody.dart';
// import 'widgets/charts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Dashbody(),
    const ReceiptMenu(),
    const Employees(),
    Charts(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('C E R E S'),
      // ),
      body: Container(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: 'Receipts'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Employees'),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart), label: 'Statistics'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
