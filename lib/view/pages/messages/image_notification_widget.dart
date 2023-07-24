import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/assets/app_assets.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/text_widget.dart';

class ImageNotificationWidget extends StatelessWidget {
  const ImageNotificationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 15.w,
          height: 20.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              AppAssets.facebookLogoAsset,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 0.h,
          left: 0.h,
          child: ClipOval(
            child: Container(
              color: AppTheme.primary500,
              width: 23,
              height: 23,
              child: const Center(
                child: TextWidget(
                  style: TextStyle(
                    fontFamily: 'SF',
                    color: AppTheme.backgroundOnBoarding,
                    fontSize: 12,
                  ),
                  text: '8',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
