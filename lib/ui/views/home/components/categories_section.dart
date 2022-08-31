import 'package:flutter/cupertino.dart';
import '../../../../models/category.dart';
import 'category_card.dart';

class CategoriesSection extends StatelessWidget {
  final List<Category> categories;

  const CategoriesSection({
    Key? key,
    required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        categories.length,
        (index) => CategoryCard(category: categories[index]),
      )),
    );
  }
}
