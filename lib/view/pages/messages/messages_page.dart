import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../utilities/themes/apptheme.dart';
import '../../widgets/app_bar_with_text.dart';
import '../../widgets/search_widget.dart';
import 'filter_button.dart';
import 'messages_widget.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppTheme.backgroundOnBoarding0,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 1.h),
                const AppBarText(text: 'Messages'),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: SearchWidget(
                          text: 'Search messages....',
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const FilterButton(),
                  ],
                ),
                SizedBox(height: 2.h),
                const MessagesWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
