import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DesktopUi extends StatefulWidget {
  const DesktopUi({Key? key}) : super(key: key);

  @override
  State<DesktopUi> createState() => _DesktopUiState();
}

class _DesktopUiState extends State<DesktopUi> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _msgController = TextEditingController();

  final List<String> slider1 = [
    'assets/images/s1.jpg',
    'assets/images/s2.jpg',
    'assets/images/s3.jpg',
    'assets/images/s4.jpg',
    'assets/images/s5.jpg',
    'assets/images/s6.jpg',
    'assets/images/s7.jpg',
    'assets/images/s8.jpg',
    'assets/images/s9.jpg',
  ];

  final slider1Controller = CarouselSliderController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .6,
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
                            onPressed: () {
                              Navigator.pushNamed(context, '/about');
                            },
                            child: Text(
                              'ABOUT',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/certificates');
                            },
                            child: Text(
                              'CERTIFICATES',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            child: Text(
                              'CONTACT US',
                              style: Theme.of(context).textTheme.headlineSmall,
                            )),
                      ],
                    ),
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
            height: MediaQuery.of(context).size.height * .6,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
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
                            const SizedBox(
                              width: 2,
                            ),
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
                            const SizedBox(
                              width: 2,
                            ),
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
                            const SizedBox(
                              width: 2,
                            ),
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
          const SizedBox(
            height: 50,
          ),
          SizedBox(
              height: MediaQuery.of(context).size.height * .6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PORTFOLIO  ___________',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .5,
                    child: InkWell(
                      child: CarouselSlider(
                          items: slider1.map((imagePath) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.fill,
                                height: MediaQuery.of(context).size.height * .4,
                                width: MediaQuery.of(context).size.width *
                                    .5, // You can adjust the BoxFit as needed.
                              ),
                            );
                          }).toList(),
                          carouselController: slider1Controller,
                          options: CarouselOptions(
                            autoPlay: true,
                            scrollPhysics: const BouncingScrollPhysics(),
                            aspectRatio: 3,
                            autoPlayCurve: Curves.linear,
                            enlargeCenterPage: true,
                            viewportFraction: 1,
                            onPageChanged: (index, reason) {
                              setState(() {
                                currentIndex = index;
                              });
                            },
                          )),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: slider1.map((imagePath) {
                      int index = slider1.indexOf(imagePath);
                      return GestureDetector(
                        // onTap: () {
                        //   setState(() {
                        //     currentIndex = entry.key;
                        //     slider1Controller.animateToPage(entry.key);
                        //   });
                        // },
                        child: Container(
                          width: 7,
                          height: 7,
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: currentIndex == index
                                ? Colors.amber
                                : Colors.white,
                          ),
                        ),
                      );
                    }).toList(),
                  )
                ],
              )),
          const SizedBox(
            height: 150,
          ),
          SizedBox(
            child: Column(
              children: [
                Text(
                  'CONTACT  ___________',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Let\'s Work',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width * .3,
                          child: Text(
                            'It\'s important to have a brand that represents you and what you stand for. That\'s why I\'m committed to helping you create a website that truly represents you, resonates with your audience, and makes a real difference. Together we can create a website that inspires, inspires and makes an impact. Let\'s do that!',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 4,
                      height: MediaQuery.of(context).size.height / 1.5,
                      // color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Name",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            TextFormField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white54,
                                  hintText: 'Write your name here',
                                  hintStyle: const TextStyle(
                                      fontSize: 14, color: Colors.white),
                                  focusColor: Colors.amber),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Email",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white54,
                                  hintText: 'Write your email here',
                                  hintStyle: const TextStyle(
                                      fontSize: 14, color: Colors.white),
                                  focusColor: Colors.amber),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Message",
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            TextFormField(
                              maxLines: 5,
                              controller: _msgController,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  filled: true,
                                  fillColor: Colors.white54,
                                  hintText: 'Write your message here',
                                  hintStyle: const TextStyle(
                                      fontSize: 14, color: Colors.white),
                                  focusColor: Colors.amber),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            ElevatedButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                    elevation: WidgetStatePropertyAll(5),
                                    shadowColor:
                                        WidgetStatePropertyAll(Colors.white),
                                    backgroundColor: WidgetStatePropertyAll(
                                        Color(0xFFFFB700))),
                                child: const Text(
                                  'Send',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            color: const Color(0xFFFFB700),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Home',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'About',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Portfolio',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resume',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Contact',
                          style: Theme.of(context).textTheme.titleMedium,
                        )),
                  ],
                ),
                Text(
                  'S.S.Naiwal _6464',
                  style: GoogleFonts.permanentMarker(
                    fontSize: 36,
                    color: const Color(0xFF111111),
                  ),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
