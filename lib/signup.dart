
import 'package:ecommerce_app/homepage.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  void _signUp() {
    // final UserName=_usernameController.text,
    final email = _emailController.text;
    final password = _passwordController.text;

    if (email.isNotEmpty && password.isNotEmpty) {
      // Implement your sign-up logic here.
      // You can validate, create a user, and navigate to the next screen on success.
      // For simplicity, this example only shows an error if the fields are empty.
      setState(() {
        _errorText = '';
      });
    } else {
      setState(() {
        _errorText = 'Please fill in all fields.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(255, 255, 238, 207),
      
      
      body:Column(
      
       mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget>[
            
           Padding(padding: EdgeInsets.only(bottom: 50,top: 50),
            child: Column(
            
            children:<Widget> [
              Container(
                margin: EdgeInsets.only(bottom: 20),
       width: 100, 
       height: 100,
      decoration: BoxDecoration(
    shape: BoxShape.circle,
    image: DecorationImage(
      fit: BoxFit.cover,
      image: AssetImage('assets/images/beauty.png'),
    ),
  ),
),
              
            Text('Glad Glamour Shop',
            style: TextStyle(
           fontFamily: 'Trajan Pro', 
            fontSize: 18,
            fontWeight: FontWeight.w700,)),
           
              ],),),




                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: TextFormField(
                                   
                                   controller: _emailController,
                                   decoration: InputDecoration(
                                     labelText: 'Email',
                                     prefixIcon: Icon(Icons.email),
                                   ),
                                 ),
                     ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              
              onPressed: (){
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>HomePage()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size.fromHeight(40),
                backgroundColor: Colors.black
              ),
              child: Text('Sign Up'),
          
            ),
            SizedBox(height: 10),
            Text(
              _errorText,
              style: TextStyle(
                color: Color.fromARGB(255, 214, 50, 39),
              ),
            ),
            TextButton(

              onPressed: () {
                //navigate to login page
                Navigator.push(context,
                 MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Text(
                'Already have an account? Login',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      );
    
  }
}

// void main() {
//   runApp(MaterialApp(
//     home: SignUp(),
//   ));
// }
