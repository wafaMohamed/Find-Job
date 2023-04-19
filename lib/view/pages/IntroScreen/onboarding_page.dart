import 'package:find_job_amit/utilities/assets/app_assets.dart';
import 'package:find_job_amit/utilities/strings/app_strings.dart';
import 'package:find_job_amit/view/widgets/custom_text.dart';
import 'package:find_job_amit/view/widgets/main_button.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:find_job_amit/view/pages/IntroScreen/page1.dart';
import 'package:find_job_amit/view/pages/IntroScreen/page2.dart';
import 'package:find_job_amit/view/pages/IntroScreen/page3.dart';
import 'package:flutter/material.dart';
import '../../../utilities/route/routes.dart';
import '../../../utilities/themes/apptheme.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: currentIndex==0?AppTheme.backgroundOnBoarding0:AppTheme.backgroundOnBoarding,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Image.asset(
                  AppAssets.logoAsset,
                  height: 19,
                  width: 81,
                ),

                GestureDetector(
                  onTap: () {

                    print('object');
                    if(currentIndex==0){
                      controller.nextPage(duration: const Duration(microseconds: 100), curve: Curves.linear);
                      controller.nextPage(duration: const Duration(microseconds: 100), curve: Curves.linear);
                    }else if(currentIndex==1){
                      controller.nextPage(duration: const Duration(microseconds: 100), curve: Curves.linear);
                    }
                  },
                  child: CustomText(
                    text: AppString.skipString,
                    fontFamily: 'SF',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: AppTheme.neutral500,
                  ),
                )
              ]),
            ),
            Expanded(
                child: Stack(
              children: [
                PageView(
                  controller: controller,

                  onPageChanged: (value){

                    setState(() {
                      currentIndex=value;
                    });
                  },
                  children: const [
                    Page1(),
                    Page2(),
                    Page3(),
                  ],
                ),
                Container(
                  alignment: const Alignment(0, 0.90),
                  child: SmoothPageIndicator(
                    onDotClicked:(index) {
                    },
                    effect:  const WormEffect(
                      dotHeight:8,
                      dotWidth: 8,
                      spacing: 3,
                      dotColor: AppTheme.primary200,
                      activeDotColor: AppTheme.primary500,
                    ),

                    controller: controller,

                    count: 3,
                  ),
                ),
              ],
            )),
            CustomMainButton(
                onpressed: () {
                  if(currentIndex==2){
                    Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.registerRoute, (route) => false);
                  }else {
                    controller.nextPage(duration: const Duration(microseconds: 100), curve: Curves.linear);
                  }
                },
              text:currentIndex!=2? AppString.nextString:AppString.getStartedString,

            ),
            SizedBox(height: 6.h,)
          ],
        ),
      ),
    );
  }
}
