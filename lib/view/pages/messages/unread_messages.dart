import 'package:find_job_amit/utilities/themes/apptheme.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/app_bar_with_text.dart';
import '../../widgets/gray_bar_widget.dart';
import '../../widgets/search_widget.dart';
import 'filter_button.dart';
import 'messages_widget.dart';

class UnReadMessages extends StatelessWidget {
  const UnReadMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 1.h),
              const AppBarText(text: 'Messages'),
              SizedBox(height: 2.h),
              Padding(
                padding:EdgeInsets.symmetric(horizontal:3.h ),
                child: Row(
                  children: [
                    Expanded(
                      child: SearchWidget(
                        text: 'Search messages....',
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(width: 2.w),
                    const FilterButton(),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              const GrayBarWidget(text: 'Unread Messages',),
              SizedBox(height: 1.h),
              const MessagesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
