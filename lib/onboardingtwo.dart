import 'package:ecommerce_app/login.dart';
import 'package:flutter/material.dart';
import 'onboard.dart';
import 'login.dart';

class PageTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 255, 238, 207),
      // appBar: AppBar(title: Text('Glad Glamour shop',
      
      //      style: TextStyle(
      //       // backgroundColor: Colors.white,
      //      fontFamily: 'Trajan Pro', 
      //       fontSize: 26,
      //       // fontWeight: FontWeight.w300,
      //       color: Colors.black,
      //       ),
      //       ),
      //       backgroundColor: Colors.white,
      // ),
      
          body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('"Cleanse, Exfoliate, Moisturize and sun protect"',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
            
            ),
            Text('Nourish Your Skin with Proven Quality Products ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),),
            // SizedBox(height: 20),
            Image.asset('assets/images/package.png'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget> [
            
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardScreen()));
              },
              child: Text('Back')),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginForm()));
              },
              child: Text('Next'),

              ),],)

          ],
        ),
      ),
    );
  }
}