import 'package:flutter/material.dart';
import 'package:ecommerce/pages/product_details.dart';

class Products extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  const Products(
      {Key? key,
        this.product_detail_name,
        this.product_detail_picture,
      })
      : super(key: key);

  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Onyx-Agate",
      "picture": "images/products/onyx-agate.jpeg",

    },
    {
      "name": "Statuario",
      "picture": "images/products/statuario.jpeg",
    },
    {
      "name": "Armani-gold",
      "picture": "images/products/armani-gold.jpeg",
    },
    {
      "name": "Black-bambu",
      "picture": "images/products/black-bambu.jpeg",
    },
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
  }) : super(key: key);
  final prod_name;
  final prod_picture;

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
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
                footer: Container(
                    color: Colors.white70,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),),
                        )                     ],)
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
