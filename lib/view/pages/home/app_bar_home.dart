import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sizer/sizer.dart';

import '../../../utilities/route/routes.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/search_widget.dart';

class AppBarHomeScreen extends StatelessWidget {
  const AppBarHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // hi and notification
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontSize: 19.sp,
                        color: AppTheme.neutral900,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                      text: 'Hi, Wafa 👋',
                      fontFamily: 'SF',
                      onpressed: () {},
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Create a better future for yourself here',
                      style: TextStyle(
                          overflow: TextOverflow.ellipsis,
                          fontSize: 11.sp,
                          color: AppTheme.neutral500),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppTheme.neutral300,
                ),
                borderRadius: BorderRadius.circular(30),
                //color: Colors.redAccent
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.notificationScreenRoute);
                },
                icon: Icon(Iconsax.notification, size: 4.h),
              ),
            ),
          ],
        ),
        // search bar
        SearchWidget(
          text: 'Search...',
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.searchScreenRoute);
          },
        ),
      ],
    );
  }
}
