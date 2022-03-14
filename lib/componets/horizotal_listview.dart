import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.0,
      child: ListView(

        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          Category(
            
            image_location: 'images/cats/granite.jpg',
            image_caption:'Granite',
          ),

          Category(
            image_location: 'images/cats/marble.png',
            image_caption:'Marble',

          ),

          Category(
            image_location: 'images/cats/Onyx.jpg',
            image_caption:'Onyx',

          ),

          Category(
            image_location: 'images/cats/travertin.jpg',
            image_caption:'Travertine',

          ),

          Category(
            image_location: 'images/cats/limestone.jpg',
            image_caption:'Limestone',

          ),

          Category(
            image_location: 'images/cats/sandstone.jpg',
            image_caption:'Sandstone',

          ),

          Category(
            image_location: 'images/cats/slates.jpg',
            image_caption:'Slates',

          ),


          Category(
            image_location: 'images/cats/quartz.jpg',
            image_caption:'Quartz',

          ),


        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({
    Key? key,
    required this.image_location,
    required this.image_caption,
  }): super(key: key);
  final String image_location;
  final String image_caption;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(2.0),
      child:  InkWell(onTap: (){},
        child: SizedBox(
          width: 100.0,

          child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption),
              )
          ),
        ),
      ),
    );
  }
}
