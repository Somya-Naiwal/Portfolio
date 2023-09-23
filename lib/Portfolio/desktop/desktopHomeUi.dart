import 'package:flutter/material.dart';

class DesktopUi extends StatelessWidget {
  DesktopUi({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Profile',
                      style: Theme.of(context).textTheme.displaySmall,
                    ),
                    Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'HOME',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'ABOUT',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'CERTIFICATES',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'CONTACT US',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                      ],
                    )
                  ],
                ),
                Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 90,
                        backgroundImage: AssetImage('assets/images/p3.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Somya Swaroop Naiwal',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'I am a Flutter Developer.',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: ClipRRect(
                    child:
                        Image.asset('assets/images/p1.jpg', fit: BoxFit.cover),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ABOUT  ___________',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    Text(
                      'Somya Swaroop Naiwal',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    Text(
                      'Detail-oriented team player with strong organizational skills.\nAbility to handle multiple projects simultaneously\nwith a high degree of accuracy.',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    Text(
                      'SKILLS ___________',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Row(
                          children: [
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                              ],
                            ),
                            const SizedBox(width: 2,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dart',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'Flutter',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'Firebase',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'GetX',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'GitLab',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                              ],
                            ),
                            const SizedBox(width: 2,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'GitHub',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'CI/CD',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'Power BI',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'Ms-Excel',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'Mysql',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                                Icon(
                                  Icons.circle,
                                  color: Color(0xFFFFB700),
                                  size: 15,
                                ),
                              ],
                            ),
                            const SizedBox(width: 2,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'C++',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'C',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                                Text(
                                  'Python',
                                  style:
                                      Theme.of(context).textTheme.headlineSmall,
                                ),
                              ],
                            ),
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PORTFOLIO  ___________',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              )),
        ],
      ),
    ));
  }
}
