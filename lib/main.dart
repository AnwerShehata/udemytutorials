import 'package:flutter/material.dart';
import 'package:udemytutorials/AnwerDrawer.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _BirdState createState() => new _BirdState();
}

class _BirdState extends State<MyApp> {

  List<String> _products = ['Food Tester'];

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


        //----------Drawer---------------------
        // drawer: AnwerDrawer(),


        //----------Body---------------------
        body: Column(
          children: <Widget>[

            // Her RaisedButton====
            new Container(
              margin: EdgeInsets.all(10.0),
              alignment: Alignment.topCenter,
              child: RaisedButton(
                child: new Text("Add product"),
                  onPressed: (){
                  setState(() {
                    _products.add("Advanced Food Anwer");
                  });
                  }),
            ),

            //her Column Element image and Text ========
            new Column(
              children: _products.map(
                (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.network("https://images.pexels.com/photos/1537317/pexels-photo-1537317.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=350",fit: BoxFit.cover,),
                      Text(element),
                    ],
                  ),
                )
              ).toList(),
            )

          ],
        ),







      ),
    );
  }

}