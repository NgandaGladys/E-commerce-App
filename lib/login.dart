import 'package:ecommerce_app/homepage.dart';
import 'package:ecommerce_app/onboardingtwo.dart';
import 'package:flutter/material.dart';
import 'signup.dart';

// Create a Form widget.  
class  LoginForm extends StatefulWidget {  
   const LoginForm({super.key});
  @override  
  State<LoginForm>createState() => LoginFormState();  
  }  
 
// Create a corresponding State class. This class holds data related to the form.  
class LoginFormState extends State<LoginForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form. 
  bool passwordVisible=false;   
  final _formKey = GlobalKey<FormState>();  

  void navigateToSignUp() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SignUp()),
    );
  }

  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Scaffold( 
      
    backgroundColor:Color.fromARGB(255, 255, 238, 207),
      
      body:Column(
        children:<Widget>[
       
           
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
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
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w700,)),
                       
                
                      
              
                    Container(  
                       margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            
                      child: Form(
                key: _formKey,  
                child: Center(
                      child: Column(  
              mainAxisAlignment:MainAxisAlignment.center,  
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration( 
                   
                    prefixIcon: const Icon(Icons.person,size: 30,
                    
                    
                    color: Colors.black,
                    
                    ),  
                    hintText: 'Enter your Username',  
                    labelText: 'UserName',  
                  ),  
                ),
                TextFormField(  
                    
                  obscureText: passwordVisible,
                     decoration: InputDecoration(
                       border: UnderlineInputBorder(),
                       
                       
                       hintText: "Password",
                       labelText: "Password",
                            prefixIcon: const Icon(Icons.password,size: 30,
                    
                    color: Colors.black, ),
                     
                       suffixIcon: IconButton(
                         icon: Icon(passwordVisible
                             ? Icons.visibility
                             : Icons.visibility_off,
                             color: Colors.black,),
                         onPressed: () {
                           setState(
                             () {
                               passwordVisible = !passwordVisible;
                             },
                           );
                         },
                       ),
                       alignLabelWithHint: false,
                      //  filled: true,
                     ),
                     keyboardType: TextInputType.visiblePassword,
                     textInputAction: TextInputAction.done,
                   ),
              
                      
                 
                
                 Container(  
                    // padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 15),  
                     margin: EdgeInsets.only(top: 20),     
                                 
                    child: ElevatedButton(  
                      
                      style: ElevatedButton.styleFrom(
                  minimumSize: Size.fromHeight(40),
                          
                    backgroundColor: Colors.black,
                      shape:ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),),
                      child:  Text('Login',
                      style: TextStyle(
                      
                        color: Colors.white,
                      ),), 
                     
                        onPressed:(){
                           Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),);
                        },  
                    ),),  
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: InkWell(
                                                     onTap: navigateToSignUp,
                                                     
                                                     child: Text(
                                          "Don't have an account? Sign up",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            
                                            
                                            decoration: TextDecoration.underline,),),
                                                
                                                  ),
                            ),
              ],  
                      ),
                ), ),
                    ),],),
            ), 
    ]));  
  }  
}  
