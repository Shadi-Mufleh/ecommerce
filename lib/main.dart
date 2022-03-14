import 'package:flutter/material.dart';
import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:ecommerce/componets/horizotal_listview.dart';
import 'package:ecommerce/componets/products.dart';
import 'package:ecommerce/pages/cart.dart';

void main()

 {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homepage(),
  ));
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget imageCarousel = const SizedBox(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/sabta-1.jpeg'),
          AssetImage('images/sabta-2.jpeg'),
          AssetImage('images/sabta-3.jpeg'),
          AssetImage('images/sabta-4.jpeg'),
          AssetImage('images/sabta-5.jpeg'),
          AssetImage('images/sabta-6.jpeg'),
          AssetImage('images/sabta-7.jpeg'),
          AssetImage('images/sabta-8.jpeg'),
          AssetImage('images/sabta-9.jpeg'),
          AssetImage('images/sabta-10.jpeg'),
          AssetImage('images/sabta-11.jpeg'),
          AssetImage('images/sabta-12.jpeg'),
          AssetImage('images/sabta-13.jpeg'),
          AssetImage('images/sabta-14.jpeg'),
          AssetImage('images/sabta-15.jpeg'),


        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: const Text('SGMT'),
        actions: <Widget>[
          IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
          IconButton(
              icon: const Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              })
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: const Text(''),
              accountEmail: const Text(''),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(

                  backgroundImage: AssetImage( "images/sgmt-icon.jpeg"),


                ),
              ),
              decoration: const BoxDecoration(color: Colors.red),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Profile'),
                leading: Icon(
                  Icons.person,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Products'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Cart()));
              },
              child: const ListTile(
                title: Text('Projects'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.red,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Projects'),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Catalouge'),
                leading: Icon(Icons.settings),
              ),
            ),
            InkWell(
              onTap: () {},
              child: const ListTile(
                title: Text('Contact us'),
                leading: Icon(Icons.help),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          imageCarousel,
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Container(
                alignment: Alignment.centerLeft, child: const Text('catagories')),
          ),
          const HorizontalList(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                alignment: Alignment.centerLeft,
                child: const Text('Recent products')),
          ),
          const Flexible(child: Products()),
        ],
      ),
    );
  }
}
