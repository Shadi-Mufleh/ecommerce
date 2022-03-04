import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details.dart';

class Products extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;
  const Products(
      {Key? key,
        this.product_detail_name,
        this.product_detail_new_price,
        this.product_detail_old_price,
        this.product_detail_picture})
      : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "dress2",
      "picture": "images/products/dress2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "hills",
      "picture": "images/products/hills2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "pants",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "pants",
      "picture": "images/products/pants2.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "shoe",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price": 120,
      "price": 85,
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_new_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  const Single_prod({
    Key? key,
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_new_price,
  }) : super(key: key);
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_new_price;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductsDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_new_price,
                  product_detail_old_price: prod_old_price,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                        ),
                        new Text("\$${prod_new_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                      ],)
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                )),
          ),
        ),
      ),
    );
  }
}
