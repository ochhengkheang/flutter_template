import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/sizes.dart';

class RorkWikiGridLayout extends StatelessWidget {
  const RorkWikiGridLayout({
    required this.itemCount,
    required this.itemBuilder,
    this.mainAxisExtent = 288,
    super.key,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      // We already have SingleChildScrollView
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
        mainAxisSpacing: MySizes.gridViewSpacing,
        crossAxisSpacing: MySizes.gridViewSpacing,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
