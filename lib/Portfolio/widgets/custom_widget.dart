import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCertificateWidget extends StatelessWidget {
   CustomCertificateWidget({super.key,required this.imagePath});
   // ignore: prefer_typing_uninitialized_variables
   var  imagePath;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:const EdgeInsets.symmetric(vertical: 15),
                  height: MediaQuery.of(context).size.height*0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow:const [
                      BoxShadow(color: Colors.white,offset: Offset(4, 4)),
                      BoxShadow(color: Colors.amberAccent,offset: Offset(-4, -4))
                    ],
                    image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.cover)
                  ),
                );
  }
}