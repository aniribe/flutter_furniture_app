import 'package:flutter/material.dart';
import 'package:furniture_app/ui/views/home/components/recommend_products_section.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/string_constants.dart';
import '../../../../models/product.dart';
import '../../../ui_util/ui_helpers.dart';
import '../home_viewmodel.dart';
import 'categories_section.dart';
import 'category_title.dart';

class PageContent extends StatelessWidget {
  final HomeViewModel model;

  const PageContent({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CategoryTitle(title: StringConstants.browseByCategories),
        const CategoriesSection(),
        verticalSpace(10),
        Divider(height: 5, color: AppColors.textColor.withOpacity(0.5)),
        verticalSpace(10),
        const CategoryTitle(title: StringConstants.recommendsForYou),
        RecommendProductsSection(
          onTap: () => model.onProductTapedHandler(product),
        ),
      ],
    );
  }
}
