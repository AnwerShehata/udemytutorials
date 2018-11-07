import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {

  final Function addProduct;
  ProductControl(this.addProduct);

  @override
    Widget build(BuildContext context) {
      return RaisedButton(
            onPressed: () {
              addProduct({'title':'anwer'   , 'image':'https://images.pexels.com/photos/772803/pexels-photo-772803.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350'});
            },
            child: Text('Add Product'),
          );
    }
}