import 'package:demo/Portfolio/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class MAboutUs extends StatelessWidget {
  const MAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body:ListView(
        padding:const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
        physics:const BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          AboutBox(context,'LinkedIn Id', () {
            launchLinks('https://www.linkedin.com/in/somya-swaroop-naiwal-7a2507266/');
          }),
          AboutBox(context, 'GitHub link', () {
            launchLinks('https://github.com/Somya6464');
          }),
          AboutBox(context, 'Skype Id', () {
            launchLinks('https://join.skype.com/invite/wEYC3qJbWNLj');
          }),
          AboutBox(context, 'Website link', () {
            launchLinks('https://ssnaiwal.vq.pe/');
          }),

                ],
      ) ,
    ));
  }
}