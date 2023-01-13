import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    this.height = 125,
    this.borderRadius = 20,
    required this.width,
    required this.image,
    this.child,
    this.margin,
    this.padding,
  }) : super(key: key);
  final double width, height;
  final String image;
  final EdgeInsets? padding, margin;
  final double borderRadius;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      margin: margin,
      padding: padding,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: child,
    );
  }
}

class CustomTag extends StatelessWidget {
  const CustomTag(
      {Key? key, required this.backgroundColor, required this.children})
      : super(key: key);
  final Color backgroundColor;
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        children: children,
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
