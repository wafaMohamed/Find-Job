import 'package:find_job_amit/view/pages/home/recent_job_card.dart';
import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/themes/apptheme.dart';
import 'app_bar_home.dart';
import 'card_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding,
        body: Padding(
          padding: const EdgeInsets.all(18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppBarHomeScreen(),
                // Suggested Job
                Row(
                  children: [
                    CustomText(
                      text: "Suggested Job",
                      fontFamily: "SF",
                      onpressed: () {},
                      style: TextStyle(
                        color: AppTheme.neutral900,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    const Spacer(),
                    CustomText(
                      text: "View all",
                      fontFamily: "SF",
                      onpressed: () {},
                      style: TextStyle(
                        color: AppTheme.primary500,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.h,
                ),

                /// card Suggested Job
                const SuggestedJobCard(),
                // SizedBox(
                //   height: 1.h,
                // ),
                /// recent job card
                Row(
                  children: [
                    CustomText(
                      text: "Recent Job",
                      fontFamily: "SF",
                      onpressed: () {},
                      style: TextStyle(
                        color: AppTheme.neutral900,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.sp,
                      ),
                    ),
                    const Spacer(),
                    CustomText(
                      text: "View all",
                      fontFamily: "SF",
                      onpressed: () {},
                      style: TextStyle(
                        color: AppTheme.primary500,
                        fontWeight: FontWeight.w400,
                        fontSize: 11.sp,
                      ),
                    ),
                  ],
                ),
                const RecentJobCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
