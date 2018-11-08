import 'package:flutter/material.dart';
import './HomePage.dart';
import './Product_Create.dart';
import './Product_List.dart';


class Admin_Products extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
        length: 3,
    child: Scaffold(

      //----- AppBar-----------------------------------
      appBar: new AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.indigo,
        title: new Text("Admin_Products"),
        bottom: TabBar(indicatorColor: Colors.amber,
          tabs: <Widget>[
          Tab(text: "Create Product", icon: Icon(Icons.create),),
          Tab(text: "My Product",icon: Icon(Icons.list),),
        ],),
      ),


      //----- Drawer-----------------------------------
      drawer: Drawer(
        child: Column(children: <Widget>[

          AppBar(automaticallyImplyLeading: false,
            title: new Text("Choose"),
            backgroundColor: Colors.indigo,
            centerTitle: true,
            elevation: 0.0,
          ),

          new ListTile(
            title: Text("All Products"),
            leading: Icon(Icons.assignment_late),
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));},
          )
        ],),
      ),


      //----- body-----------------------------------
      body:TabBarView(
        children: <Widget>[
          Product_Create(),
          Product_List(),
        ],
      )

      
      
    ));
  }
}