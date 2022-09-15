import 'package:flutter/material.dart';
import 'package:furniture_app/constants/app_colors.dart';

import 'package:stacked/stacked.dart';
import '../../../models/product.dart';

import 'components/app_bar.dart';
import 'components/product_info.dart';
import 'details_viewmodel.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailsViewModel>.reactive(
      viewModelBuilder: () => DetailsViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: AppColors.secondaryColor,
        appBar: buildAppBar(model.onBackButtonPressed),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProductInfo(product: model.product as Product),
            ],
          ),
        ),
      ),
    );
  }
}
