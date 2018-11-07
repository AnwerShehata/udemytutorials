import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {

  final String title;
  final String imageUrl;
  ProductsPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: new AppBar(
        elevation: 0.0,
        title: new Text(title),),

       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           new Image.network(imageUrl,fit: BoxFit.cover,),
           new Text(title),
           new RaisedButton(
             child: new Text("Back"),
               onPressed: ()=> Navigator.pop(context)
           ),

         ],
       )



    );
  }
}
