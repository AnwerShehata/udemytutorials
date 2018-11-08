import 'package:flutter/material.dart';
import './Pages/Detils_Products.dart';
import './product_manager.dart';

class Products extends StatelessWidget {

  final List<Map<String , String>> products;
  final Function deleteProduct;

  Products(this.products ,{this.deleteProduct}) {
    print('[Products Widget] Constructor');
  }
  
  Widget _buidProductItem(BuildContext context , int index){
    return Card(
      child: Column(
        children: <Widget>[

          //==== Images Post
          Image.network(products[index]["image"],fit: BoxFit.cover,),

          //==== Text Title Post
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(products[index]["title"]),
          ),

          //===== RaisedButton
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                color: Colors.amber,
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                child: Text("Details"),
                onPressed: () => Navigator.push<bool>(context, MaterialPageRoute(
                  builder: (BuildContext context) => Detils_Products(
                        products[index]["title"], products[index]["image"]
                    ),
                ),
                ).then((bool value){
                  if(value){ deleteProduct(index); }
                }),
                ),
            ],
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
