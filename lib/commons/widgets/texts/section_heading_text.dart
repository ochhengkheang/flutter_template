import 'package:flutter/material.dart';

class MySectionHeadingText extends StatelessWidget {
  const MySectionHeadingText({
    super.key,
    this.buttonTitle = "View all",
    this.onPressed,
    this.textColor,
    this.buttonTextColor,
    required this.title,
    this.spaceBetweenTitleAndButton = false,
    this.showActionButton = true,
  });

  final Color? textColor;
  final Color? buttonTextColor;
  final bool showActionButton;
  final bool spaceBetweenTitleAndButton;
  final String title, buttonTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Row(
      mainAxisAlignment: spaceBetweenTitleAndButton
          ? MainAxisAlignment.spaceBetween
          : MainAxisAlignment.start,
      children: [
        Text(
          title,
          style: theme.textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: theme.textTheme.labelSmall!.apply(
                    decoration: TextDecoration.underline,
                    decorationColor: buttonTextColor,
                    color: buttonTextColor),
              ))
      ],
    );
  }
}
