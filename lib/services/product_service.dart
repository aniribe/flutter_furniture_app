import '../models/product.dart';

class ProductService {
  Product? product;

  void setProduct(Product chosenProduct) {
    product = chosenProduct;
  }
}
