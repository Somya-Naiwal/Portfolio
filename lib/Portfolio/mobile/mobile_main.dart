import 'package:demo/Portfolio/mobile/about_mobile.dart';
import 'package:demo/Portfolio/mobile/certificates_mobile.dart';
import 'package:demo/Portfolio/mobile/contact_mobile.dart';
import 'package:demo/Portfolio/mobile/mHome.dart';
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
   const Mcetificates(),
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
         backgroundColor:Theme.of(context).cardColor,
         elevation: 10,
         iconSize: 28,
         type: BottomNavigationBarType.fixed,
         onTap: (index) {
           setState(() {
             myIndex = index;
             
           });
         },
         currentIndex: myIndex,
          selectedLabelStyle:const TextStyle(color: Colors.amber), // Selected label color
          unselectedLabelStyle:const TextStyle(color: Colors.white), // Unselected label color
         items: [
           BottomNavigationBarItem(
             icon: 
               Icon(Icons.home_rounded, 
             color:myIndex== 0? Colors.amber:Colors.white),
             label: 'Home',
           ),
            BottomNavigationBarItem(
             icon: Icon(
               Icons.edit_document,
               color: myIndex== 1? Colors.amber:Colors.white ,
             ),
             label: 'Certificate',
           ),
            BottomNavigationBarItem(
             icon: Icon(
               Icons.mode_edit_rounded,
               color: myIndex== 2? Colors.amber:Colors.white,
             ), 
             label: 'About',
              
           ),
            BottomNavigationBarItem(
             icon:  Icon(
               Icons.call,
               color: myIndex== 3? Colors.amber:Colors.white,
             ),
             label: 'Contact',
           ),
         ],
       ),

    );
  }
}