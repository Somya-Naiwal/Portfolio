import 'package:demo/Portfolio/widgets/custom_widget.dart';
import 'package:flutter/material.dart';

class Mcertificates extends StatelessWidget {
  const Mcertificates({super.key});
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          toolbarHeight: 50,
          leading: IconButton(onPressed: (){
            Navigator.pushNamed(context, '/home');
          }, icon:const Icon(Icons.arrow_back_outlined,color: Colors.white,)),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          children: [
            Wrap(
              alignment: WrapAlignment.spaceAround,
              children: [
                CustomCertificateWidget(imagePath: 'assets/images/c1.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c2.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c3.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c4.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c5.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c6.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c7.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c8.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c9.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c10.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c11.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c12.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c13.png'),
                CustomCertificateWidget(imagePath: 'assets/images/c14.png'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
