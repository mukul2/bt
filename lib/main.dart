import 'package:flutter/material.dart';

import 'Widgets/ProductsGrid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Test'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height:  MediaQuery.of(context).size.shortestSide*0.02,),
          Container(margin: EdgeInsets.only(left: MediaQuery.of(context).size.shortestSide*0.02),child: Text("Shopping Cart",style: TextStyle(fontSize: MediaQuery.of(context).size.shortestSide*0.02,fontWeight: FontWeight.bold),)),

          Expanded(child: ProductsGrid()),
        ],
      ),

    );
  }
}
