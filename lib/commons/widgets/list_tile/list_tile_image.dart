import 'package:flutter/material.dart';
import 'package:flutter_template/commons/widgets/rounded/rounded_image.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/consts/sizes.dart';

class ListTileImage extends StatelessWidget {
  const ListTileImage({
    super.key,
    required this.onTap,
    required this.imageProvider,
    required this.title,
    this.elevation = MySizes.cardElevation,
    this.contentPadding = const EdgeInsets.all(MySizes.md),
    this.color = MyColors.lightGrey,
    this.boxFit = BoxFit.contain,
  });

  final VoidCallback onTap;
  final ImageProvider imageProvider;
  final String title;
  final double? elevation;
  final EdgeInsetsGeometry? contentPadding;
  final Color? color;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Card(
      color: color,
      elevation: elevation,
      child: ListTile(
        contentPadding: contentPadding,
        dense: true,
        enableFeedback: true,
        onTap: onTap,
        leading: MyRoundedImage(imageProvider: imageProvider, boxFit: boxFit),
        title: Text(
          title,
          style: theme.textTheme.headlineSmall,
        ),
      ),
    );
  }
}
