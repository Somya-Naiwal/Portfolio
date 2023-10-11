import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

// ignore: must_be_immutable
class CustomCertificateWidget extends StatelessWidget {
  CustomCertificateWidget({super.key, required this.imagePath});
  // ignore: prefer_typing_uninitialized_variables
  var imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      width: 400,
      height: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(color: Colors.white, offset: Offset(4, 4)),
            BoxShadow(color: Colors.amberAccent, offset: Offset(-4, -4))
          ],
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill)),
    );
  }
}

/* For About Us Page */
void launchLinks(String link) async {
  if (await canLaunchUrlString(link)) {
    await launchUrlString(link);
  } else {
    throw 'Could not launch $link';
  }
}

Widget AboutBox(BuildContext context, String text, Function()? onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: MediaQuery.of(context).size.height * 0.08,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: const Color(0xFF111111),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color(0xFFFFB700),
                spreadRadius: 5,
                offset: Offset(2, 2)),
            BoxShadow(
                color: Color(0xFF424242),
                spreadRadius: 5,
                offset: Offset(-1, -1)),
          ]),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: GoogleFonts.permanentMarker(
            fontSize: 25,
            color: const Color(0xFFFFB700),
            fontWeight: FontWeight.w400),
      ),
    ),
  );
}