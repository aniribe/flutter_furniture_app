import 'package:flutter/cupertino.dart';
import '../../../../constants/size_config.dart';
import '../../../../constants/string_constants.dart';
import '../../../widgets/section_title.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
      child: const SectionTitle(title: StringConstants.browseByCategories),
    );
  }
}
