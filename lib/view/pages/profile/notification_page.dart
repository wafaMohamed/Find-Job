import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/gray_bar_widget.dart';
import '../../widgets/notification_custom.dart';

class NotificationProfileScreen extends StatelessWidget {
  const NotificationProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 1.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: const AppBarText(
              text: 'Notification',
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          const GrayBarWidget(
            text: 'Job notification',
          ),
          SizedBox(
            height: 2.h,
          ),
          const NotificationCustom(text: 'Your Job Search Alert',),
          const NotificationCustom(text: 'Job Application Update',),
          const NotificationCustom(text: 'Job Application Reminders',),
          const NotificationCustom(text: 'Jobs You May Be Interested In',),
          const NotificationCustom(text: 'Job Seeker Updates',),
          SizedBox(
            height: 2.h,
          ),
          const GrayBarWidget(
            text: 'Other notification',
          ),
          SizedBox(
            height: 2.h,
          ),
          const NotificationCustom(text: 'Show Profile',),
          const NotificationCustom(text: 'All Message',),
          const NotificationCustom(text: 'Message Nudges',),

        ]),
      ),
    ));
  }
}
