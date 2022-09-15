import 'package:flutter/cupertino.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_images.dart';
import '../../../../constants/size_config.dart';
import '../../../../models/product.dart';
import '../../../ui_util/ui_helpers.dart';
import '../../../widgets/section_title.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final Function() onTap;

  const ProductCard({
    Key? key,
    required this.product,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (SizeConfig.defaultSize as double) * 14.5,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: AspectRatio(
          aspectRatio: 0.693,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: FadeInImage.assetNetwork(
                  placeholder: AppImages.spinnerIcon,
                  image: product.image as String,
                  fit: BoxFit.cover,
                ),
              ),
              SectionTitle(title: product.title as String),
              verticalSpace((SizeConfig.defaultSize as double) / 2),
              Text('\$${product.price}'),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
