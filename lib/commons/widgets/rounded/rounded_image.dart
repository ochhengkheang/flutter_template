import 'package:flutter/material.dart';
import 'package:flutter_template/utils/consts/sizes.dart';

class MyRoundedImage extends StatelessWidget {
  const MyRoundedImage({
    super.key,
    required this.imageProvider,
    this.boxFit = BoxFit.contain,
    this.imageUrl,
    this.border,
    this.padding,
    this.onTap,
    this.width,
    this.height,
    this.applyImageRadius = true,
    this.backgroundColor,
    this.isNetworkImage = false,
    this.borderRadius = MySizes.md,
  });

  final VoidCallback? onTap;
  final double? width, height;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? border;
  final Color? backgroundColor;
  final bool applyImageRadius;
  final ImageProvider imageProvider;
  final String? imageUrl;
  final bool isNetworkImage;
  final double? borderRadius;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(MySizes.md),
        ),
        // ClipRRect to create border and the corner since image doesn't have border property
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius!)
              : BorderRadius.zero,
          child: Image(
              image: isNetworkImage ? NetworkImage(imageUrl!) : imageProvider,
              fit: boxFit),
        ),
      ),
    );
  }
}
