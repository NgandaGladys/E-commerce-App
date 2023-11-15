// import 'package:ecommerce_app/onboarding.dart';
import 'package:flutter/material.dart';
import 'splashscreen.dart';
// import 'onboard.dart';
// import 'onboardingtwo.dart';
// import 'login.dart';
// import 'signup.dart';

void main() {
  runApp(MyApp(
    
  ));

}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      
    );
  }
}





// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context){
//     return MaterialApp(
//       home: PageOne(),
//     );
      
    
  
//   }
// }

  