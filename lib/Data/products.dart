import '../Model/Product.dart';

class allProducts{

  Future<List<Product>> fetchAllProducts() async {

    List<Product> allProduct = [];

    allProduct.add(Product(name:"Face Masks",price: 2.50,discount: Discount(discountDescription: "Two Face Masks for £4",discountAppliesAt: 2,discountFactor: (4/(2.5*2))) ));
    allProduct.add(Product(name:"Toilet Paper",price: 0.65,discount: Discount(discountDescription: "Six rolls of toilet paper for the price of five",discountAppliesAt: 6,discountFactor:(0.65*5)/(0.65*6)) ));

    await Future.delayed(Duration(seconds: 1));
    return allProduct;
  }


}