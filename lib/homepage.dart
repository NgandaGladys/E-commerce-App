import 'package:ecommerce_app/care.dart';
import 'package:ecommerce_app/faqs.dart';
import 'package:flutter/material.dart';
import 'products.dart';
import 'about.dart';
import 'faqs.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        backgroundColor: Color.fromARGB(255, 255, 238, 207),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 104, 19, 13),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
            
          ),
          title: Row(
            children: [
                    Center(child: Container(
            margin: EdgeInsets.only(left: 10),
            width: 210,
            height: 35,
            color: Color.fromARGB(255, 250, 250, 250),
          child:TextField(
  style: TextStyle(fontSize: 16.0,color: Colors.black),
     decoration: InputDecoration(
    contentPadding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
    
    hintText: 'Search Product...',hintStyle: TextStyle(
      color: Colors.black,
    ),
    suffixIcon: Icon(Icons.search, size: 20.0,color: Colors.white60,), // setting the icon size
 
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide.none,
      
       borderRadius: BorderRadius.circular(40.0), // Set the border color when the field is not focused
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white), // Set the border color when the field is focused
    ),),

),),),


        ]),),

        drawer: Drawer(
          backgroundColor: Color.fromARGB(255, 255, 238, 207),
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: const Text('Amanda Gibson'),
                accountEmail: const Text('amandagibs@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 104, 19, 13),
                ),
              ),
              ListTile(
                title: Text('About'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AboutPage()),
                  );
                },
              ),


              ListTile(
                title: Text('Products'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  ProductsPage ()),
                  );
                },
              ),
              ListTile(
                title: Text('FAQs'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FAQPage()),
                  );
                },
              ),
              ListTile(
                title: Text('Skin care Tips'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SkincareTips()),
                  );
                },
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // Your existing code here...
                Padding(padding: EdgeInsets.only(right: 180,top: 30,bottom: 15,),
              child: 
               Text('New Products',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                 fontSize: 18,
                 color: Colors.black,
        
        
              ),),),
              Container(
                // margin: EdgeInsets.all(10),
                // height: 150,
                height: 140,
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
        color: Colors.white,
          ),
                // decoration: BoxDecoration(
            //  borderRadius: BorderRadius.circular(10),
            //  color: Colors.white,
                width: double.infinity,
                // color: Colors.white,
        
                child:GridView.count(crossAxisCount: 1,
                mainAxisSpacing: 5,
               crossAxisSpacing: 2,
               childAspectRatio: 0.5, 
               scrollDirection: Axis.horizontal,
                children:[ ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/new3.png',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
        
        
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/p2.jpg',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
        
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/p3.jpg',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
        
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/sk4.jpg',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
        
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/pack.jpg',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
        
        
        
        
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/s1.jpg',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
        
        
                 ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/massage.jpg',
                    fit: BoxFit.fill,
                    width: 120,
                    height: 120,
                  ),
                ),
             ], ),),
        
             Padding(padding: EdgeInsets.only(right: 220,),
             child:
             Text('Categories',
             style: TextStyle(
              fontWeight: FontWeight.w700,
                 fontSize: 18,
                 color: Colors.black, 
             ),),),
             Container(
              height: 140,
              padding: EdgeInsets.all(25),
              margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
        color: Colors.white
          ),
              child:  GridView.count(
                 crossAxisSpacing: 5,
                 mainAxisSpacing: 0.001,
                 crossAxisCount: 1,
                 childAspectRatio: 1.0,
                 scrollDirection: Axis.horizontal,
               
                 shrinkWrap: false,
                 children: <Widget> [
                     
                          Column(children:[
                            
                  Image.asset('assets/images/download.png',height: 65,),
                  const Text('Toners'),
            
               
                ]
          ),
        
        
                        Column(children:[
               Image.asset('assets/images/oil.jpg',height: 65,),
                const Text('Face Oil'),]
          ),
        
                        Column(children:[
             Image.asset('assets/images/cream.jpg',height: 65,),
                const Text('Moisturizers'),]
          ),
        
                        Column(children:[
                  Image.asset('assets/images/tt.jpg',height: 65,),
                const Text('Cleansers'),]
          ),
        
                        Column(children:[
                 Image.asset('assets/images/ssn.png',height: 65,),
                const Text('Serums'),]
          ),
        
            
          ],
               ),
               ),
        
        
               GestureDetector(
          onTap: () {
            // Navigate to the products page when "More" is tapped
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProductsPage()),
            );
          },
          child: Row(
            children: [
              Padding(
          padding: EdgeInsets.only(right: 20), // Adjust the spacing as needed
          child: Text(
            'Top rated',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.black,
            ),
          ),
              ),
        
              Padding(padding: EdgeInsets.only(left: 180),
              child:
              Text(
          'More',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
             // You can adjust the font size as needed
            color: Colors.black, // You can change the color to match your design
          ),
              ),),
            ],
          ),
        ),
        
          // Your existing Container code here
          Container(
          height: 200,
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:Column(children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust the alignment
            children: <Widget>[
              Column(
          children: [
            Image.asset('assets/images/toney.jpg', height: 65),
            const Text(' Face Toner'),
          ],
          
              ),
              Column(
          children: [
            Image.asset('assets/images/gelz.jpg', height: 65),
            const Text('Shower gel'),
          ],
              ),
        
              Column(
          children: [
            Image.asset('assets/images/new8.jpg', height: 65),
            const Text('VitaminC'),
          ],
              ),
            ]),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              Column(
          children: [
            Image.asset('assets/images/moisturize.jpg', height: 65),
            const Text('Moisturizer'),
          ],
              ),
              Column(
          children: [
            Image.asset('assets/images/msk.jpg', height: 65),
            const Text('Cleanser'),
          ],
              ),
              Column(
          children: [
            Image.asset('assets/images/new2.jpg', height: 65),
            const Text('Black Mask'),
          ],
              ),
            ],
          ),],),
          
        ),
        
        //  
  
        
        const Padding(padding: EdgeInsets.only(right: 180,),child:
        Text('Recommended',
            style: TextStyle(
              fontWeight: FontWeight.w700,
                 fontSize: 18,
                 color: Colors.black,
                 )), ),
         Container(
          height: 150,
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          child:Column(children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Adjust the alignment as needed
            children: <Widget>[
              Column(
          children: [
            Image.asset('assets/images/gel.jpg', height: 65),
            const Text('Shower gel'),
          ],
          
              ),
              Column(
          children: [
            Image.asset('assets/images/wipe.jpg', height: 65),
            const Text('Face Wipes'),
          ],
              ),
        
              Column(
          children: [
            Image.asset('assets/images/new1.png', height: 65),
            const Text('Sun screens'),
          ],
              ),
            ]),
             
             ],
             ),
             ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
          
  