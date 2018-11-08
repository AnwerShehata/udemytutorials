import 'package:flutter/material.dart';

class Detils_Products extends StatelessWidget {


  final String title;
  final String imageUrl;


  Detils_Products(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // هنا يتم اظهاز زر الرجوع
    return WillPopScope(onWillPop: (){
      Navigator.pop(context,false);
      return Future.value(false);
      },
      child:Scaffold(


      appBar: new AppBar(
        elevation: 0.0,
        title: new Text(title),),

       body: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[

           //==== image Poster
           new Image.network(imageUrl,fit: BoxFit.cover,),

           //===== title Poster
           new Text(title),

           //=====Button Delete Poster
           new RaisedButton(
             elevation: 0.0,
             padding: EdgeInsets.symmetric(horizontal: 50.0),
             shape: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
             color: Colors.red,
             textColor: Colors.yellow,
             child: new Text("Delete"),
               onPressed: ()=> Navigator.pop(context, true)
           ),

         ],
       )



    ),);
  }
}
