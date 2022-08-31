import 'package:flutter/cupertino.dart';

import '../../../../constants/app_colors.dart';
import '../../../../constants/size_config.dart';
import '../../../../models/category.dart';
import '../../../ui_util/ui_helpers.dart';
import '../../../widgets/section_title.dart';
import 'category_custom_shape.dart';

class GreyCard extends StatelessWidget {
  final Category category;

  const GreyCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CategoryCustomShape(),
      child: AspectRatio(
        aspectRatio: 1.025,
        child: Container(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
          color: AppColors.secondaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SectionTitle(title: category.title as String),
              verticalSpace(SizeConfig.defaultSize as double),
              Text(
                '${category.numOfProducts}+ Products',
                style: TextStyle(color: AppColors.textColor.withOpacity(0.6)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
