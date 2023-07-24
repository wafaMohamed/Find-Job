import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color color;
  final TextAlign? textAlign;
  final double? textScaleFactor;
  final FontWeight? fontWeight;
  final double? fontSize;
  final TextDecoration? textDecoration;
 // final String? fontFamily;
  final TextStyle? style;

  const TextWidget({
    Key? key,
    required this.text,
    this.maxLines,
    this.color = Colors.black,
    this.textAlign,
    this.textScaleFactor,
    this.fontWeight = FontWeight.normal,
    this.overflow = TextOverflow.ellipsis,
    this.textDecoration,
    this.fontSize,
  //  this.fontFamily,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: TextDirection.ltr,
      style: style,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      textScaleFactor: textScaleFactor,
    );
  }
}
