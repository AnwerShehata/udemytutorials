import 'package:flutter/material.dart';
import './ProductManager.dart';



void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        //----------AppBar---------------------
        appBar: new AppBar(
          centerTitle: true,
          elevation: 0.0,
          title: Text("App"),),


        //----------Body---------------------
        body: ProductManager(),



      ),
    );
  }

}