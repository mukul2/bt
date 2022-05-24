class Product {
  String? name;
  int? id;
  double? price;
  Discount? discount;

  Product({this.name, this.id, this.price, this.discount});

  Product.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    id = json['id'];
    price = json['price'];
    discount = json['discount'] != null
        ? new Discount.fromJson(json['discount'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['id'] = this.id;
    data['price'] = this.price;
    if (this.discount != null) {
      data['discount'] = this.discount!.toJson();
    }
    return data;
  }
}

class Discount {
  String? discountDescription;
  int? discountAppliesAt;
  double? discountFactor;

  Discount(
      {this.discountDescription, this.discountAppliesAt, this.discountFactor});

  Discount.fromJson(Map<String, dynamic> json) {
    discountDescription = json['discountDescription'];
    discountAppliesAt = json['discountAppliesAt'];
    discountFactor = json['discountFactor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['discountDescription'] = this.discountDescription;
    data['discountAppliesAt'] = this.discountAppliesAt;
    data['discountFactor'] = this.discountFactor;
    return data;
  }
}