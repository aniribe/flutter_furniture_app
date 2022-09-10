import 'package:flutter/cupertino.dart';
import '../../../../constants/size_config.dart';
import '../../../widgets/section_title.dart';

class CategoryTitle extends StatelessWidget {
  final String title;

  const CategoryTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize! * 2),
      child: SectionTitle(title: title),
    );
  }
}
