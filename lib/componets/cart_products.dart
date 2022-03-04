import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  const Cart_products({Key? key}) : super(key: key);

  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, Index) {
          return Single_cart_product(
              cart_prod_name: Products_on_the_cart[Index]["name"],
              cart_prod_color: Products_on_the_cart[Index]["color"],
              cart_prod_quantity: Products_on_the_cart[Index]["quantity"],
              cart_prod_size: Products_on_the_cart[Index]["size"],
              cart_prod_picture: Products_on_the_cart[Index]["picture"],
              cart_prod_new_price: Products_on_the_cart[Index]["price"],
              cart_prod_old_price: Products_on_the_cart[Index]["old price"]);
        });
  }
}

class Single_cart_product extends StatelessWidget {
  const Single_cart_product({
    Key? key,
    this.cart_prod_name,
    this.cart_prod_picture,
    this.cart_prod_old_price,
    this.cart_prod_new_price,
    this.cart_prod_size,
    this.cart_prod_quantity,
    this.cart_prod_color,
  }) : super(key: key);

  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_old_price;
  final cart_prod_new_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_quantity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: new Image.asset(
            cart_prod_picture,height: 50.0,width: 50.0
        ),
        title: new Text(cart_prod_name),
        subtitle: new Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: new Text("color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "\$${cart_prod_new_price}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: new Column(

          children: <Widget>[
            new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
            new Text("$cart_prod_quantity"),

            new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})

          ],
        ),
      ),
    );
  }
}
