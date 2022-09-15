import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/services/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../config/app.locator.dart';
import '../../../config/app.router.dart';

class DetailsViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _navigationService = locator<NavigationService>();

  Product? get product => _productService.product;

  void onBackButtonPressed() => _navigationService.popRepeated(1);
}
