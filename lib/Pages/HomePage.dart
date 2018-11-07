import 'package:flutter/material.dart';
import '../product_manager.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(elevation: 0.0,
        title: new Text("EEasyList"),),

      body: ProductManager(),


    );
  }
}