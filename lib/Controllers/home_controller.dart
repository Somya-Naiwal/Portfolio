import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final msgController = TextEditingController();

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
  final currentIndex = 0.obs;

  final howItWorkList = [
    {
      "icon": Icons.calendar_month_outlined,
      "title": "Make An\n Appointment",
      "subtitle": "First you need to confirm your\nappointment with us."
    },
    {
      "icon": Icons.spatial_tracking_outlined,
      "title": "Discuss Your\nIssue With Us",
      "subtitle": "Then disclose your\npromlems with us."
    },
    {
      "icon": Icons.electrical_services_rounded,
      "title": "Hire Our\nElectrician Services",
      "subtitle": "Hire our precious service and\nresolve your problems."
    },
  ];

  final howItWorkList1 = [
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/free-vector/broken-washing-machine-realistic-indoor-composition-with-clothes-washer-water-pouring-out-door_1284-33057.jpg?semt=ais_hybrid",
      "title": "Washing Machine",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/free-vector/refrigerator-with-lots-food_1308-100311.jpg?semt=ais_hybrid",
      "title": "Fridge / Refrigerator",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/free-vector/microwave-oven-isolated-white-background_1308-64506.jpg?semt=ais_hybrid",
      "title": "Microwave",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/premium-photo/cooker-hood-metalic-color-white-background-isolated_508835-3760.jpg?semt=ais_hybrid",
      "title": "Chimney",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/free-photo/hvac-technician-working-capacitor-part-condensing-unit-male-worker-repairman-uniform-repairing-adjusting-conditioning-system-diagnosing-looking-technical-issues_155003-18258.jpg?semt=ais_hybrid",
      "title": "AC",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/free-vector/colored-realistic-electric-water-heater-boiler-illustration-with-big-white-headline-light-blue-wall_1284-33272.jpg?semt=ais_hybrid",
      "title": "Geyser",
    },
    {
      "image":
          "https://cdn.pixabay.com/photo/2016/09/28/08/17/electric-test-screwdriver-1699953_1280.png",
      // "https://img.freepik.com/free-vector/household-water-filter-purification-pitcher-with-replacement-cartridge-full-glass-realistic-advertising-composition-blue-splashes_1284-26867.jpg?semt=ais_hybrid",
      "title": "R.O.",
    },
  ];

  void launchCall() async {
    if (await canLaunchUrl(Uri(scheme: 'tel', path: "9079288939"))) {
      await launchUrl(Uri(scheme: 'tel', path: "9079288939"));
    } else {
      throw 'Could not launch call';
    }
  }
}
