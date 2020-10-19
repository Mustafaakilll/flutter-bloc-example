import 'package:bloc_sample/models/product.dart';

class ProductService {
  static List<Product> products = List<Product>();

  static ProductService _singleton = ProductService._interval();

  factory ProductService(){
    return _singleton;
  }

  ProductService._interval();

  static List<Product> getAll() {
    products.add(Product(1, "Lenovo Pc", 2500));
    products.add(Product(2, "Huawei Pc", 4000));
    products.add(Product(3, "Acer Pc", 3000));
    products.add(Product(3, "Asus Pc", 3500));
    products.add(Product(3, "Hp Pc", 4500));
    return products;
  }
}
