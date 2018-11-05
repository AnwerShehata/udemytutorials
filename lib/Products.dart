import 'package:flutter/material.dart';

class Products extends StatelessWidget {

final List<String>products;
  Products(this.products);

  @override
  Widget build(BuildContext context) {

    return Column(
      children: products
          .map(
            (element) => Card(
          child: Column(
            children: <Widget>[
              Image.network("https://images.pexels.com/photos/862517/pexels-photo-862517.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350",fit: BoxFit.cover,),
              Text(element)
            ],
          ),
        ),
      ).toList(),
    );

  }
}