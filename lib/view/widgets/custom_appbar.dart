import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../utilities/assets/app_assets.dart';

class CustomAppBarRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Icon(Icons.arrow_back_outlined, size: 8.2.w),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Image.asset(
          AppAssets.logoAsset,
          height: 15.h,
          width: 30.w,
        ),
      ],
    );
  }
}
