import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]) {
    print('[Products Widget] Constructor');
  }
  
  Widget _buidProductItem(BuildContext context , int index){
    return Card(
      elevation: 1.0,
      child: Column(
        children: <Widget>[
          Image.network("https://cdn.pixabay.com/photo/2018/10/19/20/51/walnut-3759573__480.jpg",fit: BoxFit.cover,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(products[index]),
          ),
        ],
      ),
    );
  }

  Widget _buildProductLists(){
    Widget productCard;
    if(products.length >0){
      productCard = ListView.builder(
        itemBuilder:  _buidProductItem,
        itemCount: products.length,
      );
    }
/*    else{
      productCard = Center(child: new Text("No Pproduct Found Please add Some"),);
    }*/

else{
  productCard =Container();
    }
    return productCard;
  }



  @override
  Widget build(BuildContext context) {
    return _buildProductLists();
  }

}
