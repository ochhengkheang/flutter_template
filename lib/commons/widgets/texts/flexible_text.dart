import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/enums.dart';

class RorkWikiTitleText extends StatelessWidget {
  const RorkWikiTitleText({
    required this.title,
    this.maxLines = 1,
    this.textAlign = TextAlign.center,
    this.color,
    this.textSizes = TextSizes.small,
    super.key,
  });

  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign textAlign;
  final TextSizes textSizes;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
      style: textSizes == TextSizes.small
          ? theme.textTheme.labelMedium!.apply(color: color)
          : textSizes == TextSizes.medium
              ? theme.textTheme.bodyLarge!.apply(color: color)
              : textSizes == TextSizes.large
                  ? theme.textTheme.titleLarge!.apply(color: color)
                  : textSizes == TextSizes.veryLarge
                      ? theme.textTheme.headlineMedium!.apply(color: color)
                      : theme.textTheme.bodyMedium!.apply(color: color),
    );
  }
}
