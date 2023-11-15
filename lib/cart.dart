import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> cartItems = []; // You can store product IDs or any identifier here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 238, 207),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 104, 19, 13),
        title: Text('Shopping Cart'),
      ),
      body: cartItems.isEmpty
          ? Center(
              child: Text('Your cart is empty.'),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cartItems.length > 3 ? 3 : cartItems.length,
                    itemBuilder: (context, index) {
                      return buildCartItem(cartItems[index], index);
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cartItems.clear(); // Clear all items in the cart
                    });
                  },
                  child: Text('Clear Cart'),
                ),
              ],
            ),
    );
  }

  Widget buildCartItem(String item, int index) {
    return ListTile(
      title: Text('Item ${index + 1}'), 
      leading: Image.asset(
        item,  
        height: 40,
        width: 40,
      ),
      trailing: IconButton(
        icon: Icon(Icons.remove_circle),
        onPressed: () {
          setState(() {
            cartItems.removeAt(index); // Remove the item at the specified index
          });
        },
      ),
    );
  }
}
