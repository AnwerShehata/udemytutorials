import 'package:flutter/material.dart';

class Products extends StatelessWidget {

final List<String>products;
  Products(this.products);


  @override
  Widget build(BuildContext context) {

    return new Column(
      children: products.map(
              (element) => Card(
            child: Column(
              children: <Widget>[
                Image.network("https://images.pexels.com/photos/1537317/pexels-photo-1537317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350",fit: BoxFit.cover,),
                Text(element),
              ],
            ),
          )
      ).toList(),
    );



  }
}