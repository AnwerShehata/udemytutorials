import 'package:flutter/material.dart';
import './Products.dart';


    class ProductManager extends StatefulWidget {
      _BirdState createState() => new _BirdState();

      final String startingProduct;
      ProductManager(this.startingProduct);

    }

    class _BirdState extends State<ProductManager> {

      List<String> _products = [];

      @override
  void initState() {
        _products.add(widget.startingProduct);
    super.initState();
  }



      @override
      Widget build(BuildContext context) {
        return Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  setState(() {
                    _products.add(widget.startingProduct);
                  });
                },
                child: Text('Add Product'),
              ),
            ),
            Products(_products)
          ],
        );

      }
    }