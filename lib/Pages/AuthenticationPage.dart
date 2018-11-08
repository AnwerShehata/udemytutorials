import 'package:flutter/material.dart';
import './HomePage.dart';

class AuthenticationPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //---- AppBar --------------------------------
      appBar: AppBar(title: new Text("Login"),),

      //---- Body --------------------------------
      body:Container(
        child: RaisedButton(
          child: new Text("Login"),
            onPressed: (){
         // هنا لايقبل الرجوع للصفحة السابقة وعند الرجوع سوف يتم اغلاق البرنامج
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()),);
        
        }),
      ),
    );

  }
}
