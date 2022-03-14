import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [

    {
      "name": "Onyx-Agate",
      "picture": "images/products/onyx-agate.jpeg",
      "color": " yellow",
      "origin": "spain"
    },
    {
      "name": "Statuario",
      "picture": "images/products/statuario.jpeg",
      "color": " white",
      "origin": "spain"



    },
    {
      "name": "Armani-gold",
      "picture": "images/products/armani-gold.jpeg",
      "color": " yellow",
      "origin": "india"

    },
    {
      "name": "Black-bambu",
      "picture": "images/products/black-bambu.jpeg",
      "color": " black",
      "origin": "italy"



    }




  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, Index) {
          return Single_cart_product(
              cart_prod_name: Products_on_the_cart[Index]["name"],
              cart_prod_color: Products_on_the_cart[Index]["color"],
              cart_prod_origin: Products_on_the_cart[Index]["origin"],
              cart_prod_picture: Products_on_the_cart[Index]["picture"],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  const Single_cart_product({
    Key? key,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_origin,
    this.cart_prod_color,
  }) : super(key: key);

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_color;
  final cart_prod_origin;

  @override
  Widget build(BuildContext context) {


    return Card(
      child: ListTile(


        leading: Image.asset(

          cart_prod_picture,

          height: 100.0,width: 100.0,

        ),
        title: Text(cart_prod_name),
        subtitle: Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Origin:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_origin,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cart_prod_color,
                    style: const TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
