import 'package:flutter/material.dart';

class MasterApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<MasterApp> {
  @override
  Widget build(BuildContext context) {

    List<String> _products = ['Food Tester'];


    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  new Scaffold(

        appBar: AppBar(title: Text("Productes"),),

        body: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[

              
              new RaisedButton(
                  child: Text("Add Prodecte"),
                  onPressed: (){
                    setState(() {
                      _products.add("asdasdasd");
                    });
                  }),


              new Column(
                children: _products.map(
                    (element)=> Card(
                      child: Column(
                        children: <Widget>[
                          Image.network("https://images.pexels.com/photos/1036623/pexels-photo-1036623.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350",fit: BoxFit.cover,),
                          Text("anwer shehata "),
                        ],
                      ),
                    )
                ).toList()
              ),


            ],
          ),
        ),



      ),
    );
  }
}