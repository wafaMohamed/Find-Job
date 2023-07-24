import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/back_button_widget.dart';
import '../../../widgets/text_widget.dart';
import 'more_icon_chat.dart';

class AppBarChat extends StatelessWidget {
  const AppBarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.h,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppTheme.neutral200),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 2.w,
          ),
          const BackButtonWidget(),
          SizedBox(
            width: 2.w,
          ),
          ClipOval(
            child: Image.asset(
              AppAssets.facebookLogoAsset,
              height: 5.h,
              width: 10.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 3.w,
          ),
          TextWidget(
            text: 'Twitter',
            style: TextStyle(
                fontFamily: 'SF',
                fontSize: 14.sp,
                overflow: TextOverflow.ellipsis,
                fontWeight: FontWeight.w500,
                color: AppTheme.neutral900),
          ),
          SizedBox(
            width: 40.w,
          ),
          const MoreChatIcon(),
        ],
      ),
    );
  }
}
