import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/custom_text.dart';

class NoSearchFound extends StatelessWidget {
  const NoSearchFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 12.h),
        Image.asset(AppAssets.searchAsset),
        SizedBox(height: 3.h),
        CustomText(
            maxLines: 2,
            textAlign: TextAlign.center,
            text: 'Search not found',
            style: TextStyle(
                color: AppTheme.neutral900,
                fontSize: 18.sp,
                fontWeight: FontWeight.w500),
            fontFamily: "SF",
            onpressed: () {}),
        Center(
          child: CustomText(
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
                color: AppTheme.neutral500,
                fontSize: 13.sp,
                fontWeight: FontWeight.w400),
            text:
            'Try searching with different keywords so we can show you',
            fontFamily: 'SF',
            onpressed: () {},
          ),
        ),
      ],
    );
  }
}
