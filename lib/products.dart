import 'package:flutter/material.dart';
import 'homepage.dart';
import 'cart.dart';


class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  int cartItemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 207),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 19, 13),
        title: Row(
          children: [
            Text(
              'Products',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 80),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>CartPage()));
                  },
                ),
                cartItemCount > 0
                    ? CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 10,
                        child: Text(
                          '$cartItemCount',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      )
                    : SizedBox(),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // ... Your product rows here

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildProductCard('assets/images/new1.jpg', 'Toners', 'UGX 25000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/new4.jpg', 'Wipes', 'UGX 45000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/new7.jpg', 'Mask', 'UGX 3000'),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildProductCard('assets/images/new1.jpg', 'Toners', 'UGX 25000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/new4.jpg', 'Wipes', 'UGX 45000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/new7.jpg', 'Mask', 'UGX 3000'),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: buildProductCard('assets/images/new1.jpg', 'Toners', 'UGX 25000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/new4.jpg', 'Wipes', 'UGX 45000'),
                ),
                Expanded(
                  child: buildProductCard('assets/images/new7.jpg', 'Mask', 'UGX 3000'),
                ),
              ],
            ),
             
             
            // ... Repeat your product rows as needed
          ],
        ),
      ),
    );
  }

  Widget buildProductCard(String imageAsset, String productName, String price) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, top: 50),
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.black, width: 1.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
        child: Column(
          children: [
            Image.asset(
              imageAsset,
              height: 65,
            ),
            SizedBox(height: 10.0),
            Text(
              productName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 32, 32, 32),
              ),
            ),
            SizedBox(height: 8.0),
            Padding(
              padding: EdgeInsets.all(2),
              child: ElevatedButton(
                onPressed: () {
                  // Add the item to the cart
                  setState(() {
                    cartItemCount++;
                  });
                },
                child: Text(
                  'Add to Cart',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
