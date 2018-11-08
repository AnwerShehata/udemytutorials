import 'package:flutter/material.dart';
import '../product_manager.dart';
import './Admin_Products.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(" EasyList "),),

      drawer: Drawer(child: Column(
        children: <Widget>[

          new AppBar(
            automaticallyImplyLeading: false,
            centerTitle: true,
            elevation: 0.0,
            title: Text("Choose"),),

          ListTile(
            title: Text("Manage Product"),
            leading: Icon(Icons.low_priority),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Admin_Products()));}
    )

        ],
      ),),

      body: ProductManager(),

    );
  }
}