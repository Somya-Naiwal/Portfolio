import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
     {
      "icon": Icons.spatial_tracking_outlined,
      "title": "Discuss Your\nIssue With Us",
      "subtitle": "Then disclose your\npromlems with us."
    },
  ];



  final howItWorkList1 = [
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
    {
      "icon": Icons.electrical_services_rounded,
      "title": "Hire Our\nElectrician Services",
      "subtitle": "Hire our precious service and\nresolve your problems."
    },
    {
      "icon": Icons.electrical_services_rounded,
      "title": "Hire Our\nElectrician Services",
      "subtitle": "Hire our precious service and\nresolve your problems."
    },
    {
      "icon": Icons.electrical_services_rounded,
      "title": "Hire Our\nElectrician Services",
      "subtitle": "Hire our precious service and\nresolve your problems."
    },
  ];
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
}
