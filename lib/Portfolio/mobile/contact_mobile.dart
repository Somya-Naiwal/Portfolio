import 'package:flutter/material.dart';

class McontactUs extends StatelessWidget {
  const McontactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        body: ListView(
          physics:const BouncingScrollPhysics(),
          padding:const EdgeInsets.all(25),
          shrinkWrap: true,
          children: [
            Container(
              padding:const EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: Colors.white,
                boxShadow:const [
                  BoxShadow(
                    color: Colors.amber,
                     spreadRadius: 5,
                  )
                ]
              ),
              child:const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Contact Details :',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18,letterSpacing: 1.5),),
            SizedBox(height: 15,),
           
             Text('Contact No. :-  +91 7852094249',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
             SizedBox(height: 15,),
             Text('E-mail :-  somyanaiwal023@gmail.com',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),

                ],
              ),

            ),
            
            ],
        ),
      ),
    );
  }
}