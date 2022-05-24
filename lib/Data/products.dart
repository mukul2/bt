import '../Model/Product.dart';

class allProducts{

  Future<List<Product>> fetchAllProducts() async {

    List<Product> allProduct = [];

    allProduct.add(Product(id: 1,name:"Face Masks",price: 2.50,img: "https://ccshop.sirv.com/pim/prod/19/1938_fbf0fa28-dd74-4bad-b268-d921c6939f0a",discount: Discount(discountDescription: "Two Face Masks for £4",discountAppliesAt: 2,discountFactor: (4/(2.5*2))) ));
    allProduct.add(Product(id: 2,name:"Toilet Paper",price: 0.65,img: "https://assets.manufactum.de/p/083/083490/83490_01.jpg/stainless-steel-toilet-paper-holder.jpg?profile=pdsmain_1500",discount: Discount(discountDescription: "Six rolls of toilet paper for the price of five",discountAppliesAt: 6,discountFactor:(0.65*5)/(0.65*6)) ));

    await Future.delayed(Duration(seconds: 1));
    return allProduct;
  }


}