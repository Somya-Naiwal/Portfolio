import 'package:flutter/material.dart';

class MobileHome extends StatelessWidget {
  const MobileHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'My Profile',
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        const CircleAvatar(
           radius: 200,
           backgroundImage: AssetImage('assets/images/p3.jpg'),
         ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Somya Swaroop Naiwal',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'I am a Flutter Developer.',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    ));
  }
}
