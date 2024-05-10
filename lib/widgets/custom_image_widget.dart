import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageWidget extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final String placeholder;
  final Color? imageColor;
  final bool isRestaurant;
  final bool isFood;
  const CustomImageWidget(
      {super.key,
      required this.image,
      this.height,
      this.width,
      this.fit = BoxFit.cover,
      this.placeholder = '',
      this.imageColor,
      this.isRestaurant = false,
      this.isFood = false});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: image,
      height: height,
      width: width,
      fit: fit,
      placeholder: (context, url) => CustomAssetImageWidget(
          'assets/splash-icon.png',
          height: height,
          width: width,
          fit: fit,
          color: imageColor),
      errorWidget: (context, url, error) => CustomAssetImageWidget(
          'assets/splash-icon.png',
          height: height,
          width: width,
          fit: fit,
          color: imageColor),
    );
  }
}

class CustomAssetImageWidget extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;

  const CustomAssetImageWidget(this.image,
      {super.key,
      this.height,
      this.width,
      this.fit = BoxFit.cover,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Image.asset(image,
        fit: fit, width: width, height: height, color: color);
  }
}
