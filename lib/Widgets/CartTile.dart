import 'package:bt/Model/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartTile extends StatefulWidget {
  Product product;
  CartTile({required this.product});

  @override
  State<CartTile> createState() => _CartTileState();
}

class _CartTileState extends State<CartTile> {

  Widget safeImage(){
    double radius =  MediaQuery.of(context).size.shortestSide*0.01;
    try{
     return ClipRRect(borderRadius:  BorderRadius.circular(radius),child: Image.network(widget.product!.img!,height: MediaQuery.of(context).size.shortestSide*0.09,width: MediaQuery.of(context).size.shortestSide*0.09,));

    }catch(e){
      return Container(height: MediaQuery.of(context).size.shortestSide*0.09,width: MediaQuery.of(context).size.shortestSide*0.09,decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius),color: Colors.grey),);

    }

  }
  @override
  Widget build(BuildContext context) {
    return Container(child: Row(
      children: [
        Padding(
          padding:  EdgeInsets.only(left:  MediaQuery.of(context).size.shortestSide*0.05,right:  MediaQuery.of(context).size.shortestSide*0.01,top:  MediaQuery.of(context).size.shortestSide*0.02,bottom:  MediaQuery.of(context).size.shortestSide*0.02),
          child: safeImage(),
        ),
        Padding(
          padding:  EdgeInsets.only(left:  MediaQuery.of(context).size.shortestSide*0.01,right:  MediaQuery.of(context).size.shortestSide*0.02,top:  MediaQuery.of(context).size.shortestSide*0.02,bottom:  MediaQuery.of(context).size.shortestSide*0.02),
          child: Column(
            children: [
              Text(widget.product.name!,style: TextStyle(fontSize: MediaQuery.of(context).size.shortestSide*0.02,fontWeight: FontWeight.bold),),
            ],
          ),
        )

      ],
    ),height: MediaQuery.of(context).size.shortestSide*0.1,width:MediaQuery.of(context).size.shortestSide*0.1 ,);
  }
}
