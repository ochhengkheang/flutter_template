import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/colors.dart';
import 'package:flutter_template/utils/consts/sizes.dart';

class MyRoundedContainer extends StatelessWidget {
  const MyRoundedContainer({
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.child,
    this.showBorder = false,
    this.backgroundColor = MyColors.white,
    this.radius = MySizes.cardRadiusLg,
    this.borderColor = MyColors.borderPrimary,
    super.key,
  });

  final double? width;
  final double? height;
  final Widget? child;
  final Color backgroundColor;
  final Color borderColor;
  final double radius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: showBorder ? Border.all(color: borderColor) : null,
      ),
      child: child,
    );
  }
}
