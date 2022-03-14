import 'package:flutter/material.dart';
import 'package:ecommerce/main.dart';


class ProductsDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;

  const ProductsDetails(
      {Key? key,
        this.product_detail_name,
        this.product_detail_picture})
      : super(key: key);

  @override
  _ProductsDetailsState createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red.shade900,
        title: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Homepage()));
          },
          child: const Text('SGMT'),
        ),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  title: Row(
                  ),
                ),
              ),
            ),
          ),
          Row(

          ),
          const Divider(),
          ListTile(
            title: const Text("Product details"),
            subtitle: const Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
                    " Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
                    " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                    " It has survived not only five centuries, but also the leap into electronic typesetting, "
                    "remaining essentially unchanged. "
                    "It was popularised in the 1960s with the release of Letraset sheets"
                    " containing Lorem Ipsum passages, and more recently with desktop "
                    "publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          const Divider(),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: Text(
                  "Product origin",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("brandx"),
              ),
            ],
          ),

          const Divider(),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Products Pictures"),
          ),
          Container(
            height: 340.0,
            child: const Similar_products(),
          )
        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  const Similar_products({Key? key}) : super(key: key);

  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [


    {
      "name": "Onyx-Agate",
      "picture": "images/products/onyx-agate.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Statuario",
      "picture": "images/products/statuario.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Armani-gold",
      "picture": "images/products/armani-gold.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Black-bambu",
      "picture": "images/products/black-bambu.jpeg",
      "old_price": 120,
      "price": 85,
    },

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
             );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  const Similar_single_prod({
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
                          child: Text(
                            prod_name,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),

                      ],
                    )),
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
