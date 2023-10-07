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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Profile',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    image: DecorationImage(
                        image: AssetImage('assets/images/p3.jpg'),
                        fit: BoxFit.cover)),
              )
            ],
          ),
          const SizedBox(
            height: 30,
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
          const SizedBox(
            height: 20,
          ),
          Container(
            // width: MediaQuery.of(context).size.width*0.5,
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                    image: AssetImage('assets/images/p1.jpg'),
                    fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'ABOUT  _______',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            'Detail-oriented team player with strong organizational skills.\nAbility to handle multiple projects simultaneously\nwith a high degree of accuracy.',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    ));
  }
}
