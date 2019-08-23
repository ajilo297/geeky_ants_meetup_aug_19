import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Decoration decoration;
  final String title;
  final TextStyle titleStyle;
  final BorderRadiusGeometry borderRadius;
  final Color color;
  final Color textColor;

  CustomButton({
    @required this.title,
    @required this.onTap,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
    this.margin = const EdgeInsets.all(8),
    this.borderRadius = const BorderRadius.only(
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(20),
    ),
    this.titleStyle = const TextStyle(fontWeight: FontWeight.bold),
    this.decoration,
    this.color,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: decoration ?? getDecoration(borderRadius: borderRadius),
        child: Text(
          title.toUpperCase(),
          style: titleStyle.copyWith(color: textColor ?? Colors.white),
        ),
      ),
    );
  }

  Decoration getDecoration({
    BorderRadiusGeometry borderRadius = const BorderRadius.only(
      topRight: Radius.circular(20),
      bottomLeft: Radius.circular(20),
    ),
    Color color = Colors.red,
  }) {
    return ShapeDecoration(
      color: this.color ?? color,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
    );
  }
}