import 'package:demo/Portfolio/mobile/about_mobile.dart';
import 'package:demo/Portfolio/mobile/certificates_mobile.dart';
import 'package:demo/Portfolio/mobile/contact_mobile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Portfolio/front.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      
      theme: ThemeData(
        useMaterial3: true,
        cardColor:const Color(0xFF111111),
        textTheme: TextTheme(
          displayLarge: GoogleFonts.permanentMarker(fontSize: 30,color:const Color(0xFFFFB700),fontWeight: FontWeight.w400),
          displaySmall: GoogleFonts.permanentMarker(fontSize: 16,color:const Color(0xFFFFB700),fontWeight: FontWeight.w400),
          headlineSmall: GoogleFonts.poppins(fontSize: 16,color: Colors.white),
          titleLarge:const TextStyle(fontSize: 24,color: Colors.white),
          titleMedium:  GoogleFonts.poppins(fontSize: 16,color:const Color(0xFF111111)),
        )
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) =>const FrontScreen(),
        '/about': (context) =>const MAboutUs(),
        '/certificates':(context) => const Mcertificates(),
        '/contact': (context) =>const McontactUs(),

      },
    );

  }
}



































































































//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(),
//         body: Center(
//           child: GridView(
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             gridDelegate:
//                 SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
//             children: [
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//               Image.network('https://picsum.photos/250?image=9'),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
          
//           child:FaIcon(Icons.local_grocery_store_rounded,size: 50,color: Colors.blue,)
//           //Text('somya',style: GoogleFonts.abyssinicaSil(color: Colors.amber,fontSize: 40),
          
          
//           ),
//         ),
//       );
    
//   }
// }

// Text.rich widget.

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}): super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Center(
          
//           child:Text.rich(TextSpan(
//             text: 'Don\'t have an account?  ',
//             style: GoogleFonts.aBeeZee(color: Colors.black,fontSize: 18),

//             children: [
//               TextSpan(
//                 text: 'Sign Up',
//                 style: GoogleFonts.aBeeZee(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),

//                 recognizer: TapGestureRecognizer()..onTap =() {
//                   print('sign up is pressed');
//                 }
//               )
//             ] 
//           ),
//           )
          
          
          
//           ),
//         ),
//       );
    
//   }
// }


