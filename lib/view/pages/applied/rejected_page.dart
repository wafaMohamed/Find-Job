import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/custom_text.dart';

class RejectedJobScreen extends StatelessWidget {
  const RejectedJobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 12.h),
          Image.asset(AppAssets.rejectedAsset),
          SizedBox(height: 3.h),
          CustomText(
              maxLines: 2,
              textAlign: TextAlign.center,
              text: 'No applications were rejected',
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
                  fontSize: 11.5.sp,
                  fontWeight: FontWeight.w400),
              text: 'If there is an application that is rejected by the company it will appear here',
              fontFamily: 'SF',
              onpressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
