import 'package:flutter/material.dart';

Widget customNavBar() {
  return BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Business'),
      BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
    ],
  );
}
