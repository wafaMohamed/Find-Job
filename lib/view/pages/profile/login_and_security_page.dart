import 'package:find_job_amit/utilities/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/gray_bar_widget.dart';
import '../../widgets/settings_widget.dart';

class LoginAndSecurityScreen extends StatelessWidget {
  const LoginAndSecurityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: const AppBarText(
              text: 'Login and security',
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const GrayBarWidget(
            text: 'Account access',
          ),
          SizedBox(
            height: 2.h,
          ),
          SettingsWidget(
            text: 'Email address',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.emailAddressProfileRoute);
            },
          ),
          SettingsWidget(
            text: 'Phone number',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.phoneNumberProfileRoute);
            },
          ),
          SettingsWidget(
            text: 'Change password',
            onTap: () {
              Navigator.pushNamed(
                  context, AppRoutes.changePasswordProfileRoute);
            },
          ),
          SettingsWidget(
            text: 'Two-step verification',
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.twoStepVerificationRoute);
            },
          ),
          SettingsWidget(
            text: 'Face ID',
            onTap: () {},
          ),
          SizedBox(
            height: 2.h,
          ),
        ]),
      ),
    ));
  }
}
