import 'package:flutter/material.dart';
import 'package:furniture_app/constants/app_colors.dart';
import 'package:furniture_app/constants/size_config.dart';
import 'package:furniture_app/models/category.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/ui/ui_util/ui_helpers.dart';
import 'package:furniture_app/ui/widgets/section_title.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../../constants/app_images.dart';
import '../../../constants/string_constants.dart';
import '../../../services/fetch_categories.dart';
import '../../../services/fetch_products.dart';
import 'components/app_bar.dart';
import 'components/categories_section.dart';
import 'components/category_title.dart';
import 'components/product_card.dart';
import 'components/recommend_products_section.dart';
import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      onModelReady: (model) => model.onInit(context),
      builder: (context, model, child) => Scaffold(
        appBar: buildAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CategoryTitle(title: StringConstants.browseByCategories),
                FutureBuilder(
                  future: fetchCategories(),
                  builder: (context, snapshot) => snapshot.hasData
                      ? CategoriesSection(
                          categories: snapshot.data as List<Category>)
                      : Center(
                          child: Image.asset(AppImages.rippleIcon),
                        ),
                ),
                verticalSpace(10),
                Divider(height: 5, color: AppColors.textColor.withOpacity(0.5)),
                verticalSpace(10),
                const CategoryTitle(title: StringConstants.recommendsForYou),
                FutureBuilder(
                  future: fetchProducts(),
                  builder: (context, snapshot) => snapshot.hasData
                      ? RecommendProductsSection(
                          products: snapshot.data as List<Product>,
                        )
                      : Center(
                          child: Image.asset(AppImages.rippleIcon),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
