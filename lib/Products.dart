import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Widget] build()');
    return ListView(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.network("https://cdn.pixabay.com/photo/2018/10/22/11/58/grass-3765172__480.jpg",fit: BoxFit.cover,),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
