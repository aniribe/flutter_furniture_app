import 'package:flutter/material.dart';
import 'package:furniture_app/models/category.dart';
import 'package:stacked/stacked.dart';
import '../../../services/fetch_categories.dart';
import 'components/app_bar.dart';
import 'components/categories_section.dart';
import 'components/category_title.dart';
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CategoryTitle(),
              FutureBuilder(
                future: fetchCategories(),
                builder: (context, snapshot) => snapshot.hasData
                    ? CategoriesSection(
                        categories: snapshot.data as List<Category>)
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
