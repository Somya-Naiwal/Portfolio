import 'package:flutter/material.dart';

class MAboutUs extends StatelessWidget {
  const MAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body:ListView() ,
    ));
  }
}