import 'package:flutter/material.dart';
import './Products.dart';


    class ProductManager extends StatefulWidget {
      _BirdState createState() => new _BirdState();
    }

    class _BirdState extends State<ProductManager> {
      @override
      Widget build(BuildContext context) {

        List<String> _products = ['Food Tester'];

        return new Column(
          children: <Widget>[

        Container(
        margin: EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        child: RaisedButton(
        child: new Text("Add product"),
        onPressed: (){
        setState(() {
        _products.add("Anwer");
        });
        })

        ),

            Products(_products),




          ],
        );

      }
    }