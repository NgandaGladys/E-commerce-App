import 'package:flutter/material.dart';
import 'onboardingtwo.dart';

class OnboardScreen extends StatelessWidget{
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 238, 207), 
        
        body:Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
           Padding(padding:EdgeInsets.symmetric(vertical: 20, horizontal: 10),
           child:  
           Text('Introducing the ultimate Store for your skincare Products. Make the best of everything to make your skin young as ever. Make it a part of your daily life to give extra care for your skin.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),),) ,
             Image.asset('assets/images/new.png',
               width:500.0,
               height:200.0,
            
             ),
             
             
            Padding(padding:EdgeInsets.only(top: 20),
            child:
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.black,  
                          ),
              
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PageTwo()));
              },
              child: Text('Next'),
              
              ),),
          ],
        ),
        ),

         ),
      );
    
  }
}