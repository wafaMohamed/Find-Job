import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: IconButton(
          alignment: Alignment.topLeft,
          onPressed: () {
            Navigator.pop(context);
          },
          icon:  Icon(Icons.arrow_back,size: 4.h)),
    );
  }
}
