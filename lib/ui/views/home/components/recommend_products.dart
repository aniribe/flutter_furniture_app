import 'package:flutter/cupertino.dart';
import 'package:furniture_app/ui/views/home/components/product_card.dart';
import '../../../../constants/size_config.dart';
import '../../../../models/product.dart';

class RecommendProducts extends StatelessWidget {
  final List<Product> products;

  const RecommendProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all((SizeConfig.defaultSize as double) * 2),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:
              SizeConfig.orientation == Orientation.portrait ? 2 : 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          childAspectRatio: 0.693,
        ),
        itemBuilder: (context, index) => ProductCard(
          product: products[index],
          onTap: () {},
        ),
      ),
    );
  }
}
