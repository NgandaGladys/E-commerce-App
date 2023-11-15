import 'package:flutter/material.dart';
import 'package:ecommerce_app/onboard.dart';



class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Delayed navigation logic
    Future.delayed(Duration(seconds: 4), () {
      // Navigate to the OnboardScreen after 5 seconds
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => OnboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 207),

      // SplashScreen UI 
        body: Center(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Container(
       width: 200, 
       height: 200,
      decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/beauty.png'),
      
    ),
  ),
),Text('Glad Glamour Shop',
style: TextStyle(
  fontFamily: 'Trajan Pro',
  fontWeight: FontWeight.bold,
  fontSize: 16,
),),]
      
    ),),
    );
  }
}
