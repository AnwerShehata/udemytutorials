import 'package:flutter/material.dart';

import './product_manager.dart';
import './Pages/HomePage.dart';
import './AppTest/MasterApp.dart';
import './products.dart';
import './Pages/AuthenticationPage.dart';

void main()  {
  runApp(MyApp());}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(


        body: AuthenticationPage(),


      ),
    );
  }
}
