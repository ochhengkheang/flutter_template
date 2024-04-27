import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/sizes.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax/iconsax.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    this.title,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
    this.showBackArrow = false,
    this.iconSize,
    this.forceMaterialTransparency = false,
    this.centerTitle = false,
    this.onPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final Widget? leadingIcon;
  final VoidCallback? leadingOnPressed, onPressed;
  final List<Widget>? actions;
  final double? iconSize;
  final bool forceMaterialTransparency;
  final bool? centerTitle;

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(MySizes.appBarHeight);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: MySizes.md),
      child: AppBar(
        forceMaterialTransparency: forceMaterialTransparency,
        centerTitle: centerTitle,
        automaticallyImplyLeading: false,
        title: title,
        // guard against leadingIcon if null
        leading: showBackArrow
            ? IconButton(
                onPressed: onPressed ?? () => context.pop(),
                icon: const Icon(Iconsax.arrow_left))
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingOnPressed,
                    icon: leadingIcon!,
                    iconSize: iconSize,
                  )
                : null,
        actions: actions,
      ),
    );
  }
}
