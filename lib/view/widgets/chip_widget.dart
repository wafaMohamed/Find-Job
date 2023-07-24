import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/assets/app_assets.dart';
import '../../utilities/themes/apptheme.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({Key? key, required this.text, required this.onPressed}) : super(key: key);
final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: ActionChip(
          label: TextWidget(
            text: text,
            style: TextStyle(
                fontFamily: 'SF',
                fontSize: 9.sp,
                fontWeight: FontWeight.w500,
                overflow: TextOverflow.ellipsis,
                color: AppTheme.backgroundOnBoarding),
          ),
          labelStyle: const TextStyle(color: Colors.white, fontSize: 16),
          avatar: Image.asset(
            AppAssets.arrowDownAsset,
            color: AppTheme.backgroundOnBoarding,
          ),
          backgroundColor: AppTheme.primary900,
          onPressed: onPressed),
    );
  }
}
