import 'package:flutter/cupertino.dart';
import '../../../../constants/app_images.dart';
import '../../../../constants/size_config.dart';
import '../../../../models/category.dart';
import 'grey_card.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
      child: Container(
        width: SizeConfig.defaultSize! * 20.5,
        child: AspectRatio(
          aspectRatio: 0.83,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(),
              GreyCard(category: category),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AspectRatio(
                  aspectRatio: 1.15,
                  child: FadeInImage.assetNetwork(
                    placeholder: AppImages.spinnerIcon,
                    image: category.image as String,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
