import 'package:flutter/cupertino.dart';
import 'package:furniture_app/ui/views/home/components/recommend_products.dart';
import '../../../../models/product.dart';
import '../../../../services/fetch_products.dart';
import 'loader.dart';

class RecommendProductsSection extends StatelessWidget {
  final Function() onTap;

  const RecommendProductsSection({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchProducts(),
      builder: (context, snapshot) => snapshot.hasData
          ? RecommendProducts(
              products: snapshot.data as List<Product>,
              onTap: onTap,
            )
          : const Loader(),
    );
  }
}
