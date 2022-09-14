import 'package:flutter/cupertino.dart';

import '../../../../models/category.dart';
import '../../../../services/fetch_categories.dart';
import 'categories.dart';
import 'loader.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchCategories(),
      builder: (context, snapshot) => snapshot.hasData
          ? Categories(categories: snapshot.data as List<Category>)
          : const Loader(),
    );
  }
}
