import 'package:flutter/material.dart';


class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: Color.fromARGB(255, 255, 238, 207),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 19, 13),
        title: Text('About Us'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Container(
  width: 150, // Adjust the image size as needed
  height: 150,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/beauty.png'),
    ),
  ),
),

            Padding(padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20,),
            child:
            Text(
              'Welcome to Glad Glamour Shop',
              
              style: TextStyle(
                fontFamily:'Trajan Pro' ,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),),
            SizedBox(height: 10),
            Text(
              'We are dedicated to providing high-quality, natural skincare solutions. Our products are crafted with the finest ingredients to help you achieve healthy and glowing skin.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Contact us:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Email: contact@gladglamourshop.com\nPhone: 078-434-7880',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
