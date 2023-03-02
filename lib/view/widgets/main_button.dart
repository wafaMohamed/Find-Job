import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomMainButton extends StatelessWidget {
  final VoidCallback Onpressed;
  final String text;
  final double Height;

  const CustomMainButton(
      {Key? key,
      required this.Onpressed,
      required this.text,
      required this.Height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Height,
      width: 100,
      child: ElevatedButton(
        onPressed: Onpressed,
        child: CustomText(
          text: text,
          fontFamily: 'SF',
        ),
      ),
    );
  }
}
