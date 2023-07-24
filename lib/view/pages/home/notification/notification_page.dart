import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utilities/assets/app_assets.dart';
import '../../../../utilities/strings/app_strings.dart';
import '../../../../utilities/themes/apptheme.dart';
import '../../../widgets/app_bar_with_text.dart';
import '../../../widgets/custom_text.dart';
import '../../../widgets/gray_bar_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              AppBarText(text:AppString.notificationString),
              const GrayBarWidget(text: 'New'),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius:3.h,
                          backgroundColor: AppTheme.backgroundOnBoarding,
                          child:
                          ClipOval(child: Image.asset(AppAssets.passAsset)),
                        ),
                        trailing:  CustomText(
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 10.sp,
                            color: AppTheme.neutral500,
                            fontWeight: FontWeight.w400,
                          ),
                          text: '10:00 PM',
                          fontFamily: 'SF',
                          onpressed: () {},
                        ),
                        title:  Text('Email setup successful',style: TextStyle(fontSize: 12.sp,fontFamily: 'SF',fontWeight: FontWeight.w500)),
                         subtitle:  Text('Your email setup was successful with the following details: Your new email is rafifdianganz@gmail.com.',style: TextStyle(fontSize: 10.sp,fontFamily: 'SF',color: AppTheme.neutral500,fontWeight: FontWeight.w400)),
                        onTap: () {},

                      ),
                    );
                  },
                ),
              ),
              const GrayBarWidget(text: 'Yesterday'),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: ListTile(
                        leading: CircleAvatar(
                          radius:3.h,
                          backgroundColor: AppTheme.backgroundOnBoarding,
                          child:
                          ClipOval(child: Image.asset(AppAssets.emailAsset)),
                        ),
                        trailing:  CustomText(
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 10.sp,
                            color: AppTheme.neutral500,
                            fontWeight: FontWeight.w400,
                          ),
                          text: '10:00 PM',
                          fontFamily: 'SF',
                          onpressed: () {},
                        ),
                        title:  Text('Slack',style: TextStyle(fontSize: 12.sp,fontFamily: 'SF',fontWeight: FontWeight.w500)),
                        subtitle: Text('Posted new design jobs',style: TextStyle(fontSize: 10.sp,fontFamily: 'SF',color: AppTheme.neutral500,fontWeight: FontWeight.w400)),
                        onTap: () {},
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
