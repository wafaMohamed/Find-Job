import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/view/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/strings/app_strings.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/gray_bar_widget.dart';
import 'more_options.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: AppTheme.backgroundOnBoarding0,
              leading: const SizedBox.shrink(),
              // Removes the back arrow
              pinned: true,
              expandedHeight: 10.h,
              flexibleSpace: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: AppBarText(text: AppString.savedString),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: const GrayBarWidget(
                  text: '12 Job Saved',
                ),
              ),
            ),
            /// content
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(children: [
                          Image.asset(
                            AppAssets.twitterLogoAsset,
                          ),
                          SizedBox(width: 6.w),
                          Column(
                            children: [
                              TextWidget(
                                text: 'Senior UX Designer',
                                style: TextStyle(
                                  fontFamily: 'SF',
                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 14.sp,
                                  color: AppTheme.neutral900,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              TextWidget(
                                text: ' Twitter • Jakarta, Indonesia ',
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  color: AppTheme.neutral700,
                                  fontSize: 9.sp,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SF',
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20.w),
                          const MoreOptions(),
                        ]),
                        SizedBox(height: 3.h),
                        Row(children: [
                          TextWidget(
                            text: 'Posted 2 days ago',
                            style: TextStyle(
                              fontFamily: 'SF',
                              overflow: TextOverflow.ellipsis,
                              fontSize: 8.sp,
                              color: AppTheme.neutral700,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(width: 33.w),
                          Image.asset(AppAssets.clockGreenAsset),
                          SizedBox(width: 1.w),
                          TextWidget(
                            text: 'Be an early applicant',
                            style: TextStyle(
                              fontFamily: 'SF',
                              overflow: TextOverflow.ellipsis,
                              fontSize: 8.sp,
                              color: AppTheme.neutral700,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ]),
                        SizedBox(
                          height: 2.h,
                        ),
                        Divider(color: AppTheme.neutral200, height: 1.h),
                      ],
                    ),
                  );
                },
                childCount: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
