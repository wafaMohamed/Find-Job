import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/assets/app_assets.dart';
import '../../utilities/themes/apptheme.dart';

class CustomJobInfo extends StatelessWidget {
  const CustomJobInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///image
        Container(
          width: 17.w,
          height: 9.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              AppAssets.twitterLogoAsset,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
        TextWidget(
          textAlign: TextAlign.start,
          text: 'Senior UI Designer',
          style: TextStyle(
            fontFamily: 'SF',
            overflow: TextOverflow.ellipsis,
            color: AppTheme.neutral900,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: 1.h,
        ),
        TextWidget(
          textAlign: TextAlign.start,
          text: 'Twitter• Jakarta, Indonesia',
          style: TextStyle(
            fontFamily: 'SF',
            overflow: TextOverflow.ellipsis,
            color: AppTheme.neutral700,
            fontSize: 10.sp,
          ),
        ),
        SizedBox(
          height: 2.h,
        ),
      ],
    );
  }
}
