import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import '../../../config/app.locator.dart';
import '../../../config/app.router.dart';
import '../../../constants/size_config.dart';
import '../../../services/product_service.dart';

class HomeViewModel extends BaseViewModel {
  final _productService = locator<ProductService>();
  final _navigationService = locator<NavigationService>();

  void onInit(BuildContext context) {
    SizeConfig().init(context);
  }

  Future<void> onProductTapedHandler(Product product) async {
    _productService.setProduct(product);
    await redirectToDetails();
  }

  Future<void> redirectToDetails() async =>
      await _navigationService.navigateTo(Routes.detailsView);
}
