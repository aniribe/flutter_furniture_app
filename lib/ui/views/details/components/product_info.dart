import 'package:flutter/cupertino.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/size_config.dart';
import '../../../../models/product.dart';
import '../../../ui_util/ui_helpers.dart';

class ProductInfo extends StatelessWidget {
  final Product product;

  const ProductInfo({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize! * 37.5,
      width: SizeConfig.defaultSize! * 15,
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize! * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.category?.toUpperCase() as String,
            style: TextStyle(
              color: AppColors.textColor.withOpacity(0.6),
            ),
          ),
          verticalSpace(SizeConfig.defaultSize as double),
          Text(
            product.title as String,
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 2.4,
              fontWeight: FontWeight.bold,
              letterSpacing: -0.8,
              height: 1.4,
              // color: AppColors.textColor.withOpacity(0.6),
            ),
          ),
          verticalSpace(SizeConfig.defaultSize! * 2),
          Text(
            'Form',
            style: TextStyle(
              color: AppColors.textColor.withOpacity(0.6),
            ),
          ),
          Text(
            '\$${product.price}',
            style: TextStyle(
              fontSize: SizeConfig.defaultSize! * 1.6,
              fontWeight: FontWeight.bold,
              height: 1.6,
              color: AppColors.textColor.withOpacity(0.6),
            ),
          ),
        ],
      ),
    );
  }
}
