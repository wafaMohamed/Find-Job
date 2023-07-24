import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../utilities/themes/apptheme.dart';
import 'appbar_chat.dart';
import 'company_msg.dart';
import 'user_msg.dart';
import 'write_message_button.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Material(
          color: AppTheme.neutral100,
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),

              /// AppBar of Chat
              const AppBarChat(),
              SizedBox(
                height: 3.h,
              ),

              /// Date
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: AppTheme.neutral300,
                    height: 1,
                    width: 28.w,
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'Today, Nov 13',
                    style: TextStyle(
                      color: AppTheme.neutral400,
                      fontSize: 9.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                    color: AppTheme.neutral300,
                    height: 1,
                    width: 28.w,
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),

              /// Chat Body
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    if (index % 2 == 0) {
                      return Column(
                        children: [
                          const CompanyMessage(),
                          SizedBox(height: 2.h),
                        ],
                      );
                    } else {
                      return Column(
                        children: [
                          const UserMessage(),
                          SizedBox(height: 2.h),
                        ],
                      );
                    }
                  },
                ),
              ),

              SizedBox(
                height: 2.h,
              ),

              /// Bottom of Chat
              const WriteMessageButton(),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}
