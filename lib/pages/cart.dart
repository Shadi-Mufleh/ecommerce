import 'package:flutter/material.dart';
import 'package:ecommerce/componets/cart_products.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: const Text('cart'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
                  title: new Text("Total:"),
                  subtitle: new Text("\$230"),
                )),
            Expanded(
              child: new MaterialButton(
                onPressed: () {},
                child: new Text("check out",style: TextStyle(color: Colors.white),),
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}