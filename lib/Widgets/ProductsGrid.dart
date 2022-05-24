import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Data/products.dart';
import '../Model/Product.dart';
import 'CartTile.dart';

class ProductsGrid extends StatefulWidget {
  const ProductsGrid({Key? key}) : super(key: key);

  @override
  State<ProductsGrid> createState() => _ProductsGridState();
}

class _ProductsGridState extends State<ProductsGrid> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
        future: allProducts().fetchAllProducts(),
        builder: (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
          if(snapshot.hasError){
            return Row(
              children: [
                Icon(Icons.error),
                Text("Error"),
              ],
            );
          }
          if(snapshot.hasData ){
          return  ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {

                return CartTile(product:snapshot.data![index] ,);

              },
            );


          }else
            return Center(child: CircularProgressIndicator(),);



        });
  }
}
