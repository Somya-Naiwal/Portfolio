import 'package:demo/Portfolio/mobile/about_mobile.dart';
import 'package:demo/Portfolio/mobile/certificates_mobile.dart';
import 'package:demo/Portfolio/mobile/contact_mobile.dart';
import 'package:demo/Portfolio/mobile/mobile_home.dart';
import 'package:flutter/material.dart';

class MobileUi extends StatefulWidget {
  const MobileUi({super.key});

  @override
  State<MobileUi> createState() => _MobileUiState();
}

class _MobileUiState extends State<MobileUi> {
  int myIndex = 0;

  final List _pages = [
    const MobileHome(),
    const Mcertificates(),
    const MAboutUs(),
    const McontactUs(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: _pages[myIndex],

      /*Bottom Navigation Bar */

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myIndex,
        selectedItemColor: Colors.amber, // Color for the selected item
        unselectedItemColor: Colors.white, // Color for unselected items
        selectedLabelStyle:
            const TextStyle(color: Colors.amber), // Selected label color
        unselectedLabelStyle:
            const TextStyle(color: Colors.white), // Unselected label color
        backgroundColor: Theme.of(context).cardColor,
        elevation: 10,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit_document,
            ),
            label: 'Certificate',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mode_edit_rounded,
            ),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
            ),
            label: 'Contact',
          ),
        ],
      ),
    );
  }
}
